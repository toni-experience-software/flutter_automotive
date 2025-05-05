import 'package:code_builder/code_builder.dart';
import 'package:generator/model/vehicle_property_types.dart';

class PropertyTypeMethodInterfaceBuilder {
  const PropertyTypeMethodInterfaceBuilder(this.type);

  final VehiclePropertyType type;

  Reference get _returnTypeForProperty => switch (type) {
    VehiclePropertyType.STRING => refer("String"),
    VehiclePropertyType.BOOLEAN => refer("bool"),
    VehiclePropertyType.INT32 => refer("int"),
    VehiclePropertyType.INT32_VEC => refer("List<int>"),
    VehiclePropertyType.INT64 => refer("int"),
    VehiclePropertyType.INT64_VEC => refer("List<int>"),
    VehiclePropertyType.FLOAT => refer("double"),
    VehiclePropertyType.FLOAT_VEC => refer("List<double>"),
    VehiclePropertyType.BYTES => refer("List<int>"),
    VehiclePropertyType.MIXED => refer("dynamic"),
  };

  String get getterName => "getProperty${type.name}";
  String get setterName => "setProperty${type.name}";

  Method buildGetter() {
    return Method(
      (m) => m
        ..name = getterName
        ..modifier = MethodModifier.async
        ..returns = refer("Future<${_returnTypeForProperty.symbol}>")
        ..requiredParameters.addAll([
          Parameter(
            (p) => p
              ..name = "propertyId"
              ..type = refer("int"),
          )
        ]),
    );
  }

  Method buildSetter() {
    return Method(
      (m) => m
        ..name = setterName
        ..modifier = MethodModifier.async
        ..returns = refer("Future<void>")
        ..requiredParameters.addAll([
          Parameter(
            (p) => p
              ..name = "propertyId"
              ..type = refer("int"),
          ),
          Parameter(
            (p) => p
              ..name = "value"
              ..type = _returnTypeForProperty,
          ),
        ]),
    );
  }
}
