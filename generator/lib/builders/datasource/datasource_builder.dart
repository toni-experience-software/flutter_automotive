import 'package:code_builder/code_builder.dart';
import 'package:generator/builders/datasource/datasource_general_method_builder.dart';
import 'package:generator/builders/datasource/datasource_type_method_builder.dart';
import 'package:generator/util/vehicle_property_types.dart';

class AndroidInterfaceBuilder {
  Library buildLibrary() {
    return Library(
      (l) =>
          l
            ..body.add(_buildClass())
            ..docs.addAll([
              "// ignore_for_file: non_constant_identifier_names, unnecessary_type_check",
            ])
            ..directives.addAll([
              Directive.import("dart:async"),
              Directive.import(
                "package:flutter_automotive/flutter_automotive.dart",
              ),
            ]),
    );
  }

  Class _buildClass() {
    return Class(
      (c) =>
          c
            ..name = "VehiclePropertyDatasource"
            ..abstract = true
            ..methods.addAll([
              PropertyGeneralMethodInterfaceBuilder().buildGetter(),
              PropertyGeneralMethodInterfaceBuilder().buildSetter(),
              PropertyGeneralMethodInterfaceBuilder().buildListen(),
              for (final type in VehiclePropertyType.values) ...[
                PropertyTypeMethodInterfaceBuilder(type).buildGetter(),
                PropertyTypeMethodInterfaceBuilder(type).buildSetter(),
                PropertyTypeMethodInterfaceBuilder(type).buildListen(),
              ],
            ]),
    );
  }
}
