enum VehicleAreaSeat {
  ROW_1_LEFT(0x0001),
  ROW_1_CENTER(0x0002),
  ROW_1_RIGHT(0x0004),
  ROW_2_LEFT(0x0010),
  ROW_2_CENTER(0x0020),
  ROW_2_RIGHT(0x0040),
  ROW_3_LEFT(0x0100),
  ROW_3_CENTER(0x0200),
  ROW_3_RIGHT(0x0400);

  const VehicleAreaSeat(this.value);

  final int value;
}
