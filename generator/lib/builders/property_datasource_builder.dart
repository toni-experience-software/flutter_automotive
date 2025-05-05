import 'package:code_builder/code_builder.dart';
import 'package:generator/builders/property_type_interface_builder.dart';
import 'package:generator/model/vehicle_property_types.dart';

class AndroidInterfaceBuilder {
  Class buildClass() {
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
