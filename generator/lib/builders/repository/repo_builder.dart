import 'package:code_builder/code_builder.dart';
import 'package:flutter_automotive_models/flutter_automotive_models.dart';
import 'package:generator/builders/repository/repo_getter_builder.dart';
import 'package:generator/builders/repository/repo_setter_builder.dart';
import 'package:generator/parsers/vehicle_type_doc_parser.dart';

class PropertyRepoBuilder {
  PropertyRepoBuilder(this.parser);

  final VehicleTypeDocParser parser;

  Library buildLibrary() {
    return Library(
      (l) => l
        ..directives.addAll([
          Directive.import("package:flutter_automotive_models/flutter_automotive_models.dart"),
          Directive.import("./datasource.dart"),
        ])
        ..body.addAll([
          _buildClass(),
        ])
        ..docs.addAll([
          "// ignore_for_file: slash_for_doc_comments, doc_directive_unknown_prefixes, doc_directive_unknown",
        ]),
    );
  }

  Class _buildClass() {
    final datasourceTypeRef = refer("VehiclePropertyDatasource");
    final datasourceName = "datasource";
    final datasourceNameRef = refer(datasourceName);
    return Class(
      (c) => c
        ..name = "VehiclePropertyRepository"
        ..constructors.addAll([
          Constructor(
            (c) => c.requiredParameters.addAll([
              Parameter(
                (p) => p
                  ..name = datasourceName
                  ..toThis = true,
              ),
            ]),
          ),
        ])
        ..fields.addAll([
          Field(
            (f) => f
              ..name = datasourceName
              ..type = datasourceTypeRef
              ..modifier = FieldModifier.final$,
          ),
        ])
        ..methods.addAll([
          for (final prop in VehicleProperty.values) ...[
            if (parser.needsGetter(prop)) ...[
              VehiclePropertyGetterBuilder(
                datasource: datasourceNameRef,
                prop: prop,
              ).buildGetter(parser.getDocs(prop)),
            ],
            if (parser.needsSetter(prop)) ...[
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
