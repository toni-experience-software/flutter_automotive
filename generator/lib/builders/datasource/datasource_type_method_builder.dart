import 'package:code_builder/code_builder.dart';
import 'package:generator/util/builder_util.dart';
import 'package:generator/util/vehicle_property_types.dart';

class PropertyTypeMethodInterfaceBuilder {
  const PropertyTypeMethodInterfaceBuilder(this.type);

  final VehiclePropertyType type;

  Reference get _returnTypeForProperty => switch (type) {
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

  String get getterName => "getProperty${type.name[0].toUpperCase()}${type.name.substring(1)}";
  String get setterName => "setProperty${type.name[0].toUpperCase()}${type.name.substring(1)}";
  String get listenName => "listenProperty${type.name[0].toUpperCase()}${type.name.substring(1)}";

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
          ),
          Parameter(
            (p) => p
              ..name = "areaId"
              ..type = refer("int"),
          ),
        ])
        ..body = Block(
          (b) => b..statements.addAll([
            declareFinal("result").assign(
              refer("getProperty").call([
                refer("propertyId"),
                refer("areaId"),
              ]).awaited,
            ).statement,
            BuilderUtil.ifElseStatement(
              refer("result").isA(_returnTypeForProperty),
              refer("result").returned.statement,
              refer((Exception).toString()).newInstance([literalString("Return type mismatch")]).thrown.statement,
            ),
          ]),
        ),
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
              ..name = "areaId"
              ..type = refer("int"),
          ),
          Parameter(
            (p) => p
              ..name = "value"
              ..type = _returnTypeForProperty,
          ),
        ])
        ..body = Block(
          (b) => b..statements.addAll([
            refer("setProperty").call([
              refer("propertyId"),
              refer("areaId"),
              refer("value"),
            ]).awaited.returned.statement,
          ]),
        ),
    );
  }

  Method buildListen() {
    return Method(
      (m) => m
        ..name = listenName
        ..returns = refer("PropertyStreamData<${_returnTypeForProperty.symbol}>")
        ..requiredParameters.addAll([
          Parameter(
            (p) => p
              ..name = "propertyId"
              ..type = refer("int"),
          ),
          Parameter(
            (p) => p
              ..name = "areaId"
              ..type = refer("int"),
          ),
          Parameter(
            (p) => p
              ..name = "rate"
              ..type = refer("SensorUpdateRate"),
          )
        ])
        ..body = Block(
          (b) => b..statements.addAll([
            refer("listenProperty<${_returnTypeForProperty.symbol}>").call([
              refer("propertyId"),
              refer("areaId"),
              refer("rate"),
            ]).returned.statement,
          ]),
        ),
    );
  }
}
