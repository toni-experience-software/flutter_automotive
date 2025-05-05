import 'package:code_builder/code_builder.dart';
import 'package:flutter_automotive_models/flutter_automotive_models.dart';
import 'package:generator/builders/property_type_interface_builder.dart';

class VehiclePropertyGetterBuilder {
  const VehiclePropertyGetterBuilder({
    required this.datasource,
    required this.prop,
  });

  final Reference datasource;
  final VehicleProperty prop;

  VehiclePropertyType get type => VehiclePropertyType.forVehicleProperty(prop);

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

  String get _getterName {
    return [
      "get",
      for (final p in prop.name.split("_")) ...[
        "${p[0]}${p.substring(1).toLowerCase()}",
      ],
    ].join("");
  }

  Method buildGetter() {
    return Method(
      (m) => m
        ..name = _getterName
        ..modifier = MethodModifier.async
        ..returns = refer("Future<${_returnTypeForProperty.symbol}>")
        ..body = buildGetterBlock(),
    );
  }

  Block buildGetterBlock() {
    final interface = PropertyTypeMethodInterfaceBuilder(type);
    final propId = refer((VehicleProperty).toString()).property(prop.name).property("id");
    return Block(
      (b) => b..statements.addAll([
        datasource.property(interface.getterName).call([propId]).returned.statement,
      ]),
    );
  }
}
