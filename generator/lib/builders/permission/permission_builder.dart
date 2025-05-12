import 'package:code_builder/code_builder.dart';
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
    final List<String> permissions =
        {
            for (final prop in VehiclePropertyInput.values)
              if (parser.getProps(prop) case final props?)
                for (final permission in props.permissions)
                  if (permission != "ACCESS_FINE_LOCATION") permission,
          }.toList()
          ..sort();
    return Enum(
      (e) =>
          e
            ..name = "CarPermissions"
            ..values.addAll([
              for (final perm in permissions) ...[
                EnumValue(
                  (v) =>
                      v
                        ..name = perm
                        ..docs.addAll(["/// android.car.permission.$perm"])
                        ..arguments.addAll([
                          literalString("android.car.permission.$perm"),
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
            ]),
    );
  }
}
