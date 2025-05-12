import 'package:code_builder/code_builder.dart';
import 'package:generator/builders/repository/repo_getter_builder.dart';
import 'package:generator/builders/repository/repo_listener_builder.dart';
import 'package:generator/builders/repository/repo_setter_builder.dart';
import 'package:generator/input/vehicle_property.dart';
import 'package:generator/parsers/vehicle_type_doc_parser.dart';

class PropertyRepoBuilder {
  PropertyRepoBuilder(this.parser);

  final VehicleTypeDocParser parser;

  Library buildLibrary() {
    return Library(
      (l) =>
          l
            ..directives.addAll([
              Directive.import(
                "package:flutter_automotive/flutter_automotive.dart",
              ),
              Directive.import(
                "package:flutter_automotive/src/vehicle_datasource.dart",
              ),
            ])
            ..body.addAll([_buildNormalClass(), _buildPrivilegedClass()])
            ..docs.addAll([
              "// ignore_for_file: slash_for_doc_comments, doc_directive_unknown_prefixes, doc_directive_unknown",
            ]),
    );
  }

  Class _buildNormalClass() {
    final datasourceTypeRef = refer("VehiclePropertyDatasource");
    final datasourceName = "_datasource";
    final datasourceNameRef = refer(datasourceName);
    return Class(
      (c) =>
          c
            ..name = "VehiclePropertyRepository"
            ..constructors.addAll([
              Constructor(
                (c) =>
                    c
                      ..requiredParameters.addAll([
                        Parameter(
                          (p) =>
                              p
                                ..name = datasourceName
                                ..toThis = true,
                        ),
                      ])
                      ..initializers.addAll([
                        refer("privileged")
                            .assign(
                              refer(
                                "VehiclePrivilegedPropertyRepository",
                              ).newInstance([datasourceNameRef]),
                            )
                            .code,
                      ]),
              ),
            ])
            ..fields.addAll([
              Field(
                (f) =>
                    f
                      ..name = datasourceName
                      ..type = datasourceTypeRef
                      ..modifier = FieldModifier.final$,
              ),
              Field(
                (f) =>
                    f
                      ..name = "privileged"
                      ..type = refer("VehiclePrivilegedPropertyRepository")
                      ..modifier = FieldModifier.final$,
              ),
            ])
            ..methods.addAll([
              for (final prop in VehiclePropertyInput.values) ...[
                if (parser.needsGetter(prop, false)) ...[
                  VehiclePropertyGetterBuilder(
                    datasource: datasourceNameRef,
                    prop: prop,
                  ).buildGetter(parser.getDocs(prop)),
                  VehiclePropertyListenerBuilder(
                    datasource: datasourceNameRef,
                    prop: prop,
                  ).buildListener(parser.getDocs(prop)),
                ],
                if (parser.needsSetter(prop, false)) ...[
                  VehiclePropertySetterBuilder(
                    datasource: datasourceNameRef,
                    prop: prop,
                  ).buildSetter(parser.getDocs(prop)),
                ],
              ],
            ]),
    );
  }

  Class _buildPrivilegedClass() {
    final datasourceTypeRef = refer("VehiclePropertyDatasource");
    final datasourceName = "_datasource";
    final datasourceNameRef = refer(datasourceName);
    return Class(
      (c) =>
          c
            ..name = "VehiclePrivilegedPropertyRepository"
            ..constructors.addAll([
              Constructor(
                (c) => c.requiredParameters.addAll([
                  Parameter(
                    (p) =>
                        p
                          ..name = datasourceName
                          ..toThis = true,
                  ),
                ]),
              ),
            ])
            ..fields.addAll([
              Field(
                (f) =>
                    f
                      ..name = datasourceName
                      ..type = datasourceTypeRef
                      ..modifier = FieldModifier.final$,
              ),
            ])
            ..methods.addAll([
              for (final prop in VehiclePropertyInput.values) ...[
                if (parser.needsGetter(prop, true)) ...[
                  VehiclePropertyGetterBuilder(
                    datasource: datasourceNameRef,
                    prop: prop,
                  ).buildGetter(parser.getDocs(prop)),
                  VehiclePropertyListenerBuilder(
                    datasource: datasourceNameRef,
                    prop: prop,
                  ).buildListener(parser.getDocs(prop)),
                ],
                if (parser.needsSetter(prop, true)) ...[
                  VehiclePropertySetterBuilder(
                    datasource: datasourceNameRef,
                    prop: prop,
                  ).buildSetter(parser.getDocs(prop)),
                ],
              ],
            ]),
    );
  }
}
