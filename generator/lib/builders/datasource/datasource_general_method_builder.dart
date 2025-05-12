import 'package:code_builder/code_builder.dart';

class PropertyGeneralMethodInterfaceBuilder {
  const PropertyGeneralMethodInterfaceBuilder();

  Method buildGetter() {
    return Method(
      (m) =>
          m
            ..name = "getProperty"
            ..modifier = MethodModifier.async
            ..returns = refer("Future<dynamic>")
            ..requiredParameters.addAll([
              Parameter(
                (p) =>
                    p
                      ..name = "propertyId"
                      ..type = refer("int"),
              ),
              Parameter(
                (p) =>
                    p
                      ..name = "areaId"
                      ..type = refer("int"),
              ),
            ]),
    );
  }

  Method buildSetter() {
    return Method(
      (m) =>
          m
            ..name = "setProperty"
            ..modifier = MethodModifier.async
            ..returns = refer("Future<void>")
            ..requiredParameters.addAll([
              Parameter(
                (p) =>
                    p
                      ..name = "propertyId"
                      ..type = refer("int"),
              ),
              Parameter(
                (p) =>
                    p
                      ..name = "areaId"
                      ..type = refer("int"),
              ),
              Parameter(
                (p) =>
                    p
                      ..name = "value"
                      ..type = refer("dynamic"),
              ),
            ]),
    );
  }

  Method buildListen() {
    return Method(
      (m) =>
          m
            ..name = "listenProperty<T>"
            ..returns = refer("PropertyStreamData<T>")
            ..requiredParameters.addAll([
              Parameter(
                (p) =>
                    p
                      ..name = "propertyId"
                      ..type = refer("int"),
              ),
              Parameter(
                (p) =>
                    p
                      ..name = "areaId"
                      ..type = refer("int"),
              ),
              Parameter(
                (p) =>
                    p
                      ..name = "rate"
                      ..type = refer("SensorUpdateRate"),
              ),
            ]),
    );
  }
}
