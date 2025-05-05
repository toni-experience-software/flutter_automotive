enum VehicleAreaTypes {
    VEHICLE_AREA_TYPE_GLOBAL(0),
    VEHICLE_AREA_TYPE_WINDOW(2),
    VEHICLE_AREA_TYPE_SEAT(3),
    VEHICLE_AREA_TYPE_DOOR(4),
    VEHICLE_AREA_TYPE_MIRROR(5),
    VEHICLE_AREA_TYPE_WHEEL(6),
    VEHICLE_AREA_TYPE_VENDOR(7);

    const VehicleAreaTypes(this.value);

    final int value;
}
