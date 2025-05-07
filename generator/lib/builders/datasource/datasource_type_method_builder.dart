import 'package:code_builder/code_builder.dart';
import 'package:flutter_automotive/model/models.dart';
import 'package:generator/util/builder_util.dart';

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
  String get listenName => "listenProperty${type.name}";

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
        ])
        ..body = Block(
          (b) => b..statements.addAll([
            refer("listenProperty<${_returnTypeForProperty.symbol}>").call([
              refer("propertyId"),
              refer("areaId"),
            ]).returned.statement,
          ]),
        ),
    );
  }
}
