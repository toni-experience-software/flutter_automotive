import 'package:code_builder/code_builder.dart';
import 'package:flutter_automotive_models/flutter_automotive_models.dart';
import 'package:generator/builders/datasource/datasource_type_method_builder.dart';

class AndroidInterfaceBuilder {
  Library buildLibrary() {
    return Library(
      (l) => l
        ..body.add(_buildClass())
        ..docs.addAll([
          "// ignore_for_file: non_constant_identifier_names",
        ]),
    );
  }

  Class _buildClass() {
    return Class(
      (c) => c
        ..name = "VehiclePropertyDatasource"
        ..abstract = true
        ..methods.addAll([
          for (final type in VehiclePropertyType.values) ...[
            PropertyTypeMethodInterfaceBuilder(type).buildGetter(),
            PropertyTypeMethodInterfaceBuilder(type).buildSetter(),
          ],
        ]),
    );
  }
}
