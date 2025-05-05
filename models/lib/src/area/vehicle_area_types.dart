import 'package:flutter_automotive_models/flutter_automotive_models.dart';

enum VehicleAreaTypes {
  GLOBAL(0x01000000),
  WINDOW(0x03000000),
  MIRROR(0x04000000),
  SEAT(0x05000000),
  DOOR(0x06000000),
  WHEEL(0x07000000),
  VENDOR(0x08000000);

  static int MASK = 0x0f000000;

  const VehicleAreaTypes(this.value);

  final int value;

  static VehicleAreaTypes forVehicleProperty(VehicleProperty prop) {
    return VehicleAreaTypes.values.firstWhere(
      (v) => VehicleAreaTypes.MASK & prop.id == v.value,
    );
  }
}
