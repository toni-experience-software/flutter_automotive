import 'package:flutter_automotive/model/vehicle_property.dart';

enum VehicleAreaType {
  GLOBAL(0x01000000),
  WINDOW(0x03000000),
  MIRROR(0x04000000),
  SEAT(0x05000000),
  DOOR(0x06000000),
  WHEEL(0x07000000),
  VENDOR(0x08000000);

  static int MASK = 0x0f000000;

  const VehicleAreaType(this.value);

  final int value;

  static VehicleAreaType forVehicleProperty(VehicleProperty prop) {
    return VehicleAreaType.values.firstWhere(
      (v) => VehicleAreaType.MASK & prop.id == v.value,
    );
  }
}
