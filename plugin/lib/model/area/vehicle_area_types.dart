import 'package:flutter_automotive/model/vehicle_property.dart';

enum VehicleAreaType {
  global(0x01000000),
  window(0x03000000),
  mirror(0x04000000),
  seat(0x05000000),
  door(0x06000000),
  wheel(0x07000000),
  vendor(0x08000000);

  static int _mask = 0x0f000000;

  const VehicleAreaType(this.value);

  final int value;

  static VehicleAreaType forVehicleProperty(VehicleProperty prop) {
    return VehicleAreaType.values.firstWhere(
      (v) => VehicleAreaType._mask & prop.id == v.value,
    );
  }
}
