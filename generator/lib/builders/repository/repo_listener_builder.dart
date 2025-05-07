import 'package:code_builder/code_builder.dart';
import 'package:flutter_automotive/model/models.dart';
import 'package:generator/builders/datasource/datasource_type_method_builder.dart';

class VehiclePropertyListenerBuilder {
  const VehiclePropertyListenerBuilder({
    required this.datasource,
    required this.prop,
  });

  final Reference datasource;
  final VehicleProperty prop;

  VehiclePropertyType get propType => VehiclePropertyType.forVehicleProperty(prop);
  VehicleAreaType get areaType => VehicleAreaType.forVehicleProperty(prop);

  Reference get _returnTypeForProperty => switch (propType) {
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

  String get _listenerName {
    return [
      "listen",
      for (final p in prop.name.split("_")) ...[
        "${p[0]}${p.substring(1).toLowerCase()}",
      ],
    ].join("");
  }

  Reference? get _areaParameterRef => switch (areaType) {
    VehicleAreaType.GLOBAL => null,
    VehicleAreaType.VENDOR => null,
    VehicleAreaType.WINDOW => refer((VehicleAreaWindow).toString()),
    VehicleAreaType.MIRROR => refer((VehicleAreaMirror).toString()),
    VehicleAreaType.SEAT => refer((VehicleAreaSeat).toString()),
    VehicleAreaType.DOOR => refer((VehicleAreaDoor).toString()),
    VehicleAreaType.WHEEL => refer((VehicleAreaWheel).toString()),
  };

  Method buildListener(String? docs) {
    return Method(
      (m) => m
        ..name = _listenerName
        ..returns = refer("PropertyStreamData<${_returnTypeForProperty.symbol}>")
        ..requiredParameters.addAll([
          if (_areaParameterRef case final ref?) Parameter(
            (p) => p
              ..name = "area"
              ..type = ref,
          ),
        ])
        ..body = buildListenerBlock()
        ..docs.addAll([
          if (docs != null) docs,
        ]),
    );
  }

  Block buildListenerBlock() {
    final interface = PropertyTypeMethodInterfaceBuilder(propType);
    final propId = refer((VehicleProperty).toString()).property(prop.name).property("id");
    final areaId = switch (areaType) {
      VehicleAreaType.GLOBAL || VehicleAreaType.VENDOR => literal(0),
      VehicleAreaType.WINDOW
      || VehicleAreaType.MIRROR
      || VehicleAreaType.SEAT
      || VehicleAreaType.DOOR
      || VehicleAreaType.WHEEL => refer("area").property("value"),
    };
    return Block(
      (b) => b..statements.addAll([
        datasource.property(interface.listenName).call([
          propId,
          areaId,
        ]).returned.statement,
      ]),
    );
  }
}
