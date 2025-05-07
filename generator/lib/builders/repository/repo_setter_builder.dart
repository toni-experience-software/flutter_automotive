import 'package:code_builder/code_builder.dart';
import 'package:flutter_automotive/model/models.dart';
import 'package:generator/builders/datasource/datasource_type_method_builder.dart';
import 'package:generator/input/vehicle_property.dart';
import 'package:generator/util/vehicle_area_types.dart';
import 'package:generator/util/vehicle_property_types.dart';

class VehiclePropertySetterBuilder {
  const VehiclePropertySetterBuilder({
    required this.datasource,
    required this.prop,
  });

  final Reference datasource;
  final VehiclePropertyInput prop;

  VehiclePropertyType get propType => VehiclePropertyType.forVehicleProperty(prop);
  VehicleAreaType get areaType => VehicleAreaType.forVehicleProperty(prop);

  Reference get _returnTypeForProperty => switch (propType) {
    VehiclePropertyType.string => refer("String"),
    VehiclePropertyType.boolean => refer("bool"),
    VehiclePropertyType.int32 => refer("int"),
    VehiclePropertyType.int32Vec => refer("List<int>"),
    VehiclePropertyType.int64 => refer("int"),
    VehiclePropertyType.int64Vec => refer("List<int>"),
    VehiclePropertyType.float => refer("double"),
    VehiclePropertyType.floatVec => refer("List<double>"),
    VehiclePropertyType.bytes => refer("List<int>"),
    VehiclePropertyType.mixed => refer("dynamic"),
  };

  String get _setterName {
    return [
      "set",
      for (final p in prop.name.split("_")) ...[
        "${p[0]}${p.substring(1).toLowerCase()}",
      ],
    ].join("");
  }

  Reference? get _areaParameterRef => switch (areaType) {
    VehicleAreaType.global || VehicleAreaType.vendor => null,
    VehicleAreaType.window => refer((VehicleAreaWindow).toString()),
    VehicleAreaType.mirror => refer((VehicleAreaMirror).toString()),
    VehicleAreaType.seat => refer((VehicleAreaSeat).toString()),
    VehicleAreaType.door => refer((VehicleAreaDoor).toString()),
    VehicleAreaType.wheel => refer((VehicleAreaWheel).toString()),
  };

  Method buildSetter(String? docs) {
    return Method(
      (m) => m
        ..name = _setterName
        ..modifier = MethodModifier.async
        ..returns = refer("Future<void>")
        ..requiredParameters.addAll([
          if (_areaParameterRef case final ref?) Parameter(
            (p) => p
              ..name = "area"
              ..type = ref,
          ),
          Parameter(
            (p) => p
              ..name = "value"
              ..type = _returnTypeForProperty,
          ),
        ])
        ..body = buildGetterBlock()
        ..docs.addAll([
          if (docs != null) docs,
        ]),
    );
  }

  Block buildGetterBlock() {
    final interface = PropertyTypeMethodInterfaceBuilder(propType);
    final propId = refer("VehicleProperty").property(prop.name).property("id");
    final areaId = switch (areaType) {
      VehicleAreaType.global || VehicleAreaType.vendor => literal(0),
      VehicleAreaType.window
      || VehicleAreaType.mirror
      || VehicleAreaType.seat
      || VehicleAreaType.door
      || VehicleAreaType.wheel => refer("area").property("value"),
    };
    return Block(
      (b) => b..statements.addAll([
        datasource.property(interface.setterName).call([
          propId,
          areaId,
          refer("value"),
        ]).returned.statement,
      ]),
    );
  }
}
