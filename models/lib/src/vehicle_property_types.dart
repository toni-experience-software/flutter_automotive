import 'vehicle_property.dart';

enum VehiclePropertyType {
  STRING(0x00100000),
  BOOLEAN(0x00200000),
  INT32(0x00400000),
  INT32_VEC(0x00410000),
  INT64(0x00500000),
  INT64_VEC(0x00510000),
  FLOAT(0x00600000),
  FLOAT_VEC(0x00610000),
  BYTES(0x00700000),
  MIXED(0x00e00000);

  static int MASK = 0x00ff0000;

  const VehiclePropertyType(this.value);

  final int value;

  static VehiclePropertyType forVehicleProperty(VehicleProperty prop) {
    return VehiclePropertyType.values.firstWhere(
      (v) => VehiclePropertyType.MASK & prop.id == v.value,
    );
  }
}
