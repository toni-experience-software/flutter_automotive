import 'package:code_builder/code_builder.dart';

class InterfaceBuilder {
  Class buildClass() {
    return Class((c) => c..name = "VehiclePropertiesInterface");
  }
}
