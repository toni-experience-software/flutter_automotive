enum VehicleAreaDoor {
  ROW_1_LEFT(0x00000001),
  ROW_1_RIGHT(0x00000004),
  ROW_2_LEFT(0x00000010),
  ROW_2_RIGHT(0x00000040),
  ROW_3_LEFT(0x00000100),
  ROW_3_RIGHT(0x00000400),
  HOOD(0x10000000),
  REAR(0x20000000);

  const VehicleAreaDoor(this.value);

  final int value;
}
