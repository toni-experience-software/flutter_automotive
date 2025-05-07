import 'vehicle_property.dart';

enum VehiclePropertyType {
  string(0x00100000),
  boolean(0x00200000),
  int32(0x00400000),
  int32Vec(0x00410000),
  int64(0x00500000),
  int64Vec(0x00510000),
  float(0x00600000),
  floatVec(0x00610000),
  bytes(0x00700000),
  mixed(0x00e00000);

  static int _mask = 0x00ff0000;

  const VehiclePropertyType(this.value);

  final int value;

  static VehiclePropertyType forVehicleProperty(VehicleProperty prop) {
    return VehiclePropertyType.values.firstWhere(
      (v) => VehiclePropertyType._mask & prop.id == v.value,
    );
  }
}
