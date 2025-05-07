enum VehicleAreaWheel {
  leftFront(0x1),
  rightFront(0x2),
  leftRear(0x4),
  rightRear(0x8);

  const VehicleAreaWheel(this.value);

  final int value;
}
