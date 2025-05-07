enum VehicleAreaSeat {
  row1Left(0x0001),
  row1Center(0x0002),
  row1Right(0x0004),
  row2Left(0x0010),
  row2Center(0x0020),
  row2Right(0x0040),
  row3Left(0x0100),
  row3Center(0x0200),
  row3Right(0x0400);

  const VehicleAreaSeat(this.value);

  final int value;
}
