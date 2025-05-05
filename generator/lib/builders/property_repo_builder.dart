import 'package:code_builder/code_builder.dart';
import 'package:flutter_automotive_models/flutter_automotive_models.dart';
import 'package:generator/builders/property_getter_builder.dart';

class PropertyRepoBuilder {
  Library buildLibrary() {
    return Library(
      (l) => l
        ..directives.addAll([
          Directive.import("package:flutter_automotive_models/flutter_automotive_models.dart"),
          Directive.import("./datasource.dart"),
        ])
        ..body.addAll([
          _buildClass(),
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
          for (final prop in VehicleProperty.values)
            VehiclePropertyGetterBuilder(
              datasource: datasourceNameRef,
              prop: prop,
            ).buildGetter(),
        ]),
    );
  }
}
