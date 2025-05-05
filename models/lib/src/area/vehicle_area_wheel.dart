enum VehicleAreaWheel {
  LEFT_FRONT(0x1),
  RIGHT_FRONT(0x2),
  LEFT_REAR(0x4),
  RIGHT_REAR(0x8);

  const VehicleAreaWheel(this.value);

  final int value;
}
