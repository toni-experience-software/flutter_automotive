// ignore_for_file: constant_identifier_names

library;

enum CarPermissions {
  /// android.car.permission.PERMISSION_ADJUST_RANGE_REMAINING
  PERMISSION_ADJUST_RANGE_REMAINING(
    'android.car.permission.PERMISSION_ADJUST_RANGE_REMAINING',
  ),

  /// android.car.permission.PERMISSION_CAR_DRIVING_STATE
  PERMISSION_CAR_DRIVING_STATE(
    'android.car.permission.PERMISSION_CAR_DRIVING_STATE',
  ),

  /// android.car.permission.PERMISSION_CAR_DRIVING_STATE_3P
  PERMISSION_CAR_DRIVING_STATE_3P(
    'android.car.permission.PERMISSION_CAR_DRIVING_STATE_3P',
  ),

  /// android.car.permission.PERMISSION_CAR_DYNAMICS_STATE
  PERMISSION_CAR_DYNAMICS_STATE(
    'android.car.permission.PERMISSION_CAR_DYNAMICS_STATE',
  ),

  /// android.car.permission.PERMISSION_CAR_ENGINE_DETAILED
  PERMISSION_CAR_ENGINE_DETAILED(
    'android.car.permission.PERMISSION_CAR_ENGINE_DETAILED',
  ),

  /// android.car.permission.PERMISSION_CAR_ENGINE_DETAILED_3P
  PERMISSION_CAR_ENGINE_DETAILED_3P(
    'android.car.permission.PERMISSION_CAR_ENGINE_DETAILED_3P',
  ),

  /// android.car.permission.PERMISSION_CAR_EPOCH_TIME
  PERMISSION_CAR_EPOCH_TIME('android.car.permission.PERMISSION_CAR_EPOCH_TIME'),

  /// android.car.permission.PERMISSION_CAR_INFO
  PERMISSION_CAR_INFO('android.car.permission.PERMISSION_CAR_INFO'),

  /// android.car.permission.PERMISSION_CONTROL_ADAS_SETTINGS
  PERMISSION_CONTROL_ADAS_SETTINGS(
    'android.car.permission.PERMISSION_CONTROL_ADAS_SETTINGS',
  ),

  /// android.car.permission.PERMISSION_CONTROL_ADAS_STATES
  PERMISSION_CONTROL_ADAS_STATES(
    'android.car.permission.PERMISSION_CONTROL_ADAS_STATES',
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_AIRBAGS
  PERMISSION_CONTROL_CAR_AIRBAGS(
    'android.car.permission.PERMISSION_CONTROL_CAR_AIRBAGS',
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_CLIMATE
  PERMISSION_CONTROL_CAR_CLIMATE(
    'android.car.permission.PERMISSION_CONTROL_CAR_CLIMATE',
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_DOORS
  PERMISSION_CONTROL_CAR_DOORS(
    'android.car.permission.PERMISSION_CONTROL_CAR_DOORS',
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_DYNAMICS_STATE
  PERMISSION_CONTROL_CAR_DYNAMICS_STATE(
    'android.car.permission.PERMISSION_CONTROL_CAR_DYNAMICS_STATE',
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_ENERGY
  PERMISSION_CONTROL_CAR_ENERGY(
    'android.car.permission.PERMISSION_CONTROL_CAR_ENERGY',
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_HORN
  PERMISSION_CONTROL_CAR_HORN(
    'android.car.permission.PERMISSION_CONTROL_CAR_HORN',
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_MIRRORS
  PERMISSION_CONTROL_CAR_MIRRORS(
    'android.car.permission.PERMISSION_CONTROL_CAR_MIRRORS',
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_SEATS
  PERMISSION_CONTROL_CAR_SEATS(
    'android.car.permission.PERMISSION_CONTROL_CAR_SEATS',
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_WINDOWS
  PERMISSION_CONTROL_CAR_WINDOWS(
    'android.car.permission.PERMISSION_CONTROL_CAR_WINDOWS',
  ),

  /// android.car.permission.PERMISSION_CONTROL_DISPLAY_UNITS
  PERMISSION_CONTROL_DISPLAY_UNITS(
    'android.car.permission.PERMISSION_CONTROL_DISPLAY_UNITS',
  ),

  /// android.car.permission.PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS
  PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS(
    'android.car.permission.PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS',
  ),

  /// android.car.permission.PERMISSION_CONTROL_ENERGY_PORTS
  PERMISSION_CONTROL_ENERGY_PORTS(
    'android.car.permission.PERMISSION_CONTROL_ENERGY_PORTS',
  ),

  /// android.car.permission.PERMISSION_CONTROL_EXTERIOR_LIGHTS
  PERMISSION_CONTROL_EXTERIOR_LIGHTS(
    'android.car.permission.PERMISSION_CONTROL_EXTERIOR_LIGHTS',
  ),

  /// android.car.permission.PERMISSION_CONTROL_GLOVE_BOX
  PERMISSION_CONTROL_GLOVE_BOX(
    'android.car.permission.PERMISSION_CONTROL_GLOVE_BOX',
  ),

  /// android.car.permission.PERMISSION_CONTROL_HEAD_UP_DISPLAY
  PERMISSION_CONTROL_HEAD_UP_DISPLAY(
    'android.car.permission.PERMISSION_CONTROL_HEAD_UP_DISPLAY',
  ),

  /// android.car.permission.PERMISSION_CONTROL_INTERIOR_LIGHTS
  PERMISSION_CONTROL_INTERIOR_LIGHTS(
    'android.car.permission.PERMISSION_CONTROL_INTERIOR_LIGHTS',
  ),

  /// android.car.permission.PERMISSION_CONTROL_POWERTRAIN
  PERMISSION_CONTROL_POWERTRAIN(
    'android.car.permission.PERMISSION_CONTROL_POWERTRAIN',
  ),

  /// android.car.permission.PERMISSION_CONTROL_STEERING_WHEEL
  PERMISSION_CONTROL_STEERING_WHEEL(
    'android.car.permission.PERMISSION_CONTROL_STEERING_WHEEL',
  ),

  /// android.car.permission.PERMISSION_CONTROL_VALET_MODE
  PERMISSION_CONTROL_VALET_MODE(
    'android.car.permission.PERMISSION_CONTROL_VALET_MODE',
  ),

  /// android.car.permission.PERMISSION_CONTROL_WINDSHIELD_WIPERS
  PERMISSION_CONTROL_WINDSHIELD_WIPERS(
    'android.car.permission.PERMISSION_CONTROL_WINDSHIELD_WIPERS',
  ),

  /// android.car.permission.PERMISSION_ENERGY
  PERMISSION_ENERGY('android.car.permission.PERMISSION_ENERGY'),

  /// android.car.permission.PERMISSION_ENERGY_PORTS
  PERMISSION_ENERGY_PORTS('android.car.permission.PERMISSION_ENERGY_PORTS'),

  /// android.car.permission.PERMISSION_EXTERIOR_ENVIRONMENT
  PERMISSION_EXTERIOR_ENVIRONMENT(
    'android.car.permission.PERMISSION_EXTERIOR_ENVIRONMENT',
  ),

  /// android.car.permission.PERMISSION_EXTERIOR_LIGHTS
  PERMISSION_EXTERIOR_LIGHTS(
    'android.car.permission.PERMISSION_EXTERIOR_LIGHTS',
  ),

  /// android.car.permission.PERMISSION_IDENTIFICATION
  PERMISSION_IDENTIFICATION('android.car.permission.PERMISSION_IDENTIFICATION'),

  /// android.car.permission.PERMISSION_MILEAGE
  PERMISSION_MILEAGE('android.car.permission.PERMISSION_MILEAGE'),

  /// android.car.permission.PERMISSION_MILEAGE_3P
  PERMISSION_MILEAGE_3P('android.car.permission.PERMISSION_MILEAGE_3P'),

  /// android.car.permission.PERMISSION_POWERTRAIN
  PERMISSION_POWERTRAIN('android.car.permission.PERMISSION_POWERTRAIN'),

  /// android.car.permission.PERMISSION_PRIVILEGED_CAR_INFO
  PERMISSION_PRIVILEGED_CAR_INFO(
    'android.car.permission.PERMISSION_PRIVILEGED_CAR_INFO',
  ),

  /// android.car.permission.PERMISSION_READ_ADAS_SETTINGS
  PERMISSION_READ_ADAS_SETTINGS(
    'android.car.permission.PERMISSION_READ_ADAS_SETTINGS',
  ),

  /// android.car.permission.PERMISSION_READ_ADAS_STATES
  PERMISSION_READ_ADAS_STATES(
    'android.car.permission.PERMISSION_READ_ADAS_STATES',
  ),

  /// android.car.permission.PERMISSION_READ_BRAKE_INFO
  PERMISSION_READ_BRAKE_INFO(
    'android.car.permission.PERMISSION_READ_BRAKE_INFO',
  ),

  /// android.car.permission.PERMISSION_READ_CAR_AIRBAGS
  PERMISSION_READ_CAR_AIRBAGS(
    'android.car.permission.PERMISSION_READ_CAR_AIRBAGS',
  ),

  /// android.car.permission.PERMISSION_READ_CAR_HORN
  PERMISSION_READ_CAR_HORN('android.car.permission.PERMISSION_READ_CAR_HORN'),

  /// android.car.permission.PERMISSION_READ_CAR_PEDALS
  PERMISSION_READ_CAR_PEDALS(
    'android.car.permission.PERMISSION_READ_CAR_PEDALS',
  ),

  /// android.car.permission.PERMISSION_READ_CAR_SEATS
  PERMISSION_READ_CAR_SEATS('android.car.permission.PERMISSION_READ_CAR_SEATS'),

  /// android.car.permission.PERMISSION_READ_CAR_SEAT_BELTS
  PERMISSION_READ_CAR_SEAT_BELTS(
    'android.car.permission.PERMISSION_READ_CAR_SEAT_BELTS',
  ),

  /// android.car.permission.PERMISSION_READ_DISPLAY_UNITS
  PERMISSION_READ_DISPLAY_UNITS(
    'android.car.permission.PERMISSION_READ_DISPLAY_UNITS',
  ),

  /// android.car.permission.PERMISSION_READ_DRIVER_MONITORING_SETTINGS
  PERMISSION_READ_DRIVER_MONITORING_SETTINGS(
    'android.car.permission.PERMISSION_READ_DRIVER_MONITORING_SETTINGS',
  ),

  /// android.car.permission.PERMISSION_READ_DRIVER_MONITORING_STATES
  PERMISSION_READ_DRIVER_MONITORING_STATES(
    'android.car.permission.PERMISSION_READ_DRIVER_MONITORING_STATES',
  ),

  /// android.car.permission.PERMISSION_READ_EXTERIOR_LIGHTS
  PERMISSION_READ_EXTERIOR_LIGHTS(
    'android.car.permission.PERMISSION_READ_EXTERIOR_LIGHTS',
  ),

  /// android.car.permission.PERMISSION_READ_HEAD_UP_DISPLAY_STATUS
  PERMISSION_READ_HEAD_UP_DISPLAY_STATUS(
    'android.car.permission.PERMISSION_READ_HEAD_UP_DISPLAY_STATUS',
  ),

  /// android.car.permission.PERMISSION_READ_IMPACT_SENSORS
  PERMISSION_READ_IMPACT_SENSORS(
    'android.car.permission.PERMISSION_READ_IMPACT_SENSORS',
  ),

  /// android.car.permission.PERMISSION_READ_INTERIOR_LIGHTS
  PERMISSION_READ_INTERIOR_LIGHTS(
    'android.car.permission.PERMISSION_READ_INTERIOR_LIGHTS',
  ),

  /// android.car.permission.PERMISSION_READ_STEERING_STATE
  PERMISSION_READ_STEERING_STATE(
    'android.car.permission.PERMISSION_READ_STEERING_STATE',
  ),

  /// android.car.permission.PERMISSION_READ_STEERING_STATE_3P
  PERMISSION_READ_STEERING_STATE_3P(
    'android.car.permission.PERMISSION_READ_STEERING_STATE_3P',
  ),

  /// android.car.permission.PERMISSION_READ_ULTRASONICS_SENSOR_DATA
  PERMISSION_READ_ULTRASONICS_SENSOR_DATA(
    'android.car.permission.PERMISSION_READ_ULTRASONICS_SENSOR_DATA',
  ),

  /// android.car.permission.PERMISSION_READ_VALET_MODE
  PERMISSION_READ_VALET_MODE(
    'android.car.permission.PERMISSION_READ_VALET_MODE',
  ),

  /// android.car.permission.PERMISSION_READ_WINDSHIELD_WIPERS
  PERMISSION_READ_WINDSHIELD_WIPERS(
    'android.car.permission.PERMISSION_READ_WINDSHIELD_WIPERS',
  ),

  /// android.car.permission.PERMISSION_READ_WINDSHIELD_WIPERS_3P
  PERMISSION_READ_WINDSHIELD_WIPERS_3P(
    'android.car.permission.PERMISSION_READ_WINDSHIELD_WIPERS_3P',
  ),

  /// android.car.permission.PERMISSION_SPEED
  PERMISSION_SPEED('android.car.permission.PERMISSION_SPEED'),

  /// android.car.permission.PERMISSION_TIRES
  PERMISSION_TIRES('android.car.permission.PERMISSION_TIRES'),

  /// android.car.permission.PERMISSION_TIRES_3P
  PERMISSION_TIRES_3P('android.car.permission.PERMISSION_TIRES_3P'),

  /// android.car.permission.PERMISSION_VENDOR_EXTENSION
  PERMISSION_VENDOR_EXTENSION(
    'android.car.permission.PERMISSION_VENDOR_EXTENSION',
  );

  const CarPermissions(this.androidName);

  final String androidName;
}
