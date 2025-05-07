enum VehicleAreaMirror {
  driverLeft(0x00000001),
  driverRight(0x00000002),
  driverCenter(0x00000004);

  const VehicleAreaMirror(this.value);

  final int value;
}
