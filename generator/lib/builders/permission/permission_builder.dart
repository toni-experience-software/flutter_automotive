import 'package:code_builder/code_builder.dart';
import 'package:generator/input/car_permission.dart';
import 'package:generator/input/vehicle_property.dart';
import 'package:generator/parsers/vehicle_type_doc_parser.dart';

class VehiclePermissionBuilder {
  VehiclePermissionBuilder(this.parser);

  final VehicleTypeDocParser parser;

  Library buildLibrary() {
    return Library(
      (l) =>
          l
            ..body.addAll([_buildMainEnum()])
            ..docs.addAll([
              """
// ignore_for_file: constant_identifier_names
""",
            ]),
    );
  }

  Enum _buildMainEnum() {
    final List<(String, bool)> permissions =
        {
            for (final prop in VehiclePropertyInput.values)
              if (parser.getProps(prop) case final props?)
                for (final permission in props.permissions)
                  if (permission.$1 != "ACCESS_FINE_LOCATION") permission,
          }.toList()
          ..sort((a, b) => a.$1.compareTo(b.$1));
    return Enum(
      (e) =>
          e
            ..name = "CarPermissions"
            ..values.addAll([
              for (final perm in permissions) ...[
                EnumValue(
                  (v) =>
                      v
                        ..name = perm.$1
                        ..docs.addAll([
                          "/// ${CarPermission.forName(perm.$1).androidName}",
                          if (perm.$2) ...[
                            "///",
                            "/// This permission is a Signature|Privileged permission and requires special access.",
                          ],
                        ])
                        ..arguments.addAll([
                          literalString(
                            CarPermission.forName(perm.$1).androidName,
                          ),
                          literalBool(perm.$2),
                        ]),
                ),
              ],
            ])
            ..constructors.addAll([
              Constructor(
                (c) =>
                    c
                      ..constant = true
                      ..requiredParameters.addAll([
                        Parameter(
                          (p) =>
                              p
                                ..name = "androidName"
                                ..toThis = true,
                        ),
                        Parameter(
                          (p) =>
                              p
                                ..name = "privileged"
                                ..toThis = true,
                        ),
                      ]),
              ),
            ])
            ..fields.addAll([
              Field(
                (f) =>
                    f
                      ..name = "androidName"
                      ..type = refer("String")
                      ..modifier = FieldModifier.final$,
              ),
              Field(
                (f) =>
                    f
                      ..name = "privileged"
                      ..type = refer("bool")
                      ..modifier = FieldModifier.final$,
              ),
            ]),
    );
  }
}
