enum VehicleAreaMirror {
  DRIVER_LEFT(0x00000001),
  DRIVER_RIGHT(0x00000002),
  DRIVER_CENTER(0x00000004);

  const VehicleAreaMirror(this.value);

  final int value;
}
