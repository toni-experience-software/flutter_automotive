enum VehicleAreaDoor {
  row1Left(0x00000001),
  row1Right(0x00000004),
  row2Left(0x00000010),
  row2Right(0x00000040),
  row3Left(0x00000100),
  row3Right(0x00000400),
  hood(0x10000000),
  rear(0x20000000);

  const VehicleAreaDoor(this.value);

  final int value;
}
