enum VehicleAreaWindow {
  frontWindshield(0x00000001),
  rearWindshield(0x00000002),
  row1Left(0x00000010),
  row1Right(0x00000040),
  row2Left(0x00000100),
  row2Right(0x00000400),
  row3Left(0x00001000),
  row3Right(0x00004000),
  roofTop1(0x00010000),
  roofTop2(0x00020000);

  const VehicleAreaWindow(this.value);

  final int value;
}
