import 'package:code_builder/code_builder.dart';
import 'package:generator/builders/property_getter_builder.dart';
import 'package:generator/model/vehicle_property.dart';

class PropertyRepoBuilder {
  Class buildClass() {
    return Class(
      (c) => c
        ..name = "VehiclePropertyRepository"
        ..abstract = true
        ..methods.addAll([
          for (final prop in VehicleProperty.values)
            VehiclePropertyGetterBuilder(prop).buildGetter(),
        ]),
    );
  }
}
