// ignore_for_file: constant_identifier_names

library;

enum CarPermissions {
  /// android.car.permission.PERMISSION_ADJUST_RANGE_REMAINING
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_ADJUST_RANGE_REMAINING(
    'android.car.permission.PERMISSION_ADJUST_RANGE_REMAINING',
    true,
  ),

  /// android.car.permission.PERMISSION_CAR_DRIVING_STATE
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CAR_DRIVING_STATE(
    'android.car.permission.PERMISSION_CAR_DRIVING_STATE',
    true,
  ),

  /// android.car.permission.PERMISSION_CAR_DRIVING_STATE_3P
  PERMISSION_CAR_DRIVING_STATE_3P(
    'android.car.permission.PERMISSION_CAR_DRIVING_STATE_3P',
    false,
  ),

  /// android.car.permission.PERMISSION_CAR_DYNAMICS_STATE
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CAR_DYNAMICS_STATE(
    'android.car.permission.PERMISSION_CAR_DYNAMICS_STATE',
    true,
  ),

  /// android.car.permission.PERMISSION_CAR_ENGINE_DETAILED
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CAR_ENGINE_DETAILED(
    'android.car.permission.PERMISSION_CAR_ENGINE_DETAILED',
    true,
  ),

  /// android.car.permission.PERMISSION_CAR_ENGINE_DETAILED_3P
  PERMISSION_CAR_ENGINE_DETAILED_3P(
    'android.car.permission.PERMISSION_CAR_ENGINE_DETAILED_3P',
    false,
  ),

  /// android.car.permission.PERMISSION_CAR_EPOCH_TIME
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CAR_EPOCH_TIME(
    'android.car.permission.PERMISSION_CAR_EPOCH_TIME',
    true,
  ),

  /// android.car.permission.PERMISSION_CAR_INFO
  PERMISSION_CAR_INFO('android.car.permission.PERMISSION_CAR_INFO', false),

  /// android.car.permission.PERMISSION_CONTROL_ADAS_SETTINGS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_ADAS_SETTINGS(
    'android.car.permission.PERMISSION_CONTROL_ADAS_SETTINGS',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_ADAS_STATES
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_ADAS_STATES(
    'android.car.permission.PERMISSION_CONTROL_ADAS_STATES',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_AIRBAGS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_CAR_AIRBAGS(
    'android.car.permission.PERMISSION_CONTROL_CAR_AIRBAGS',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_CLIMATE
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_CAR_CLIMATE(
    'android.car.permission.PERMISSION_CONTROL_CAR_CLIMATE',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_DOORS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_CAR_DOORS(
    'android.car.permission.PERMISSION_CONTROL_CAR_DOORS',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_DYNAMICS_STATE
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_CAR_DYNAMICS_STATE(
    'android.car.permission.PERMISSION_CONTROL_CAR_DYNAMICS_STATE',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_ENERGY
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_CAR_ENERGY(
    'android.car.permission.PERMISSION_CONTROL_CAR_ENERGY',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_HORN
  PERMISSION_CONTROL_CAR_HORN(
    'android.car.permission.PERMISSION_CONTROL_CAR_HORN',
    false,
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_MIRRORS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_CAR_MIRRORS(
    'android.car.permission.PERMISSION_CONTROL_CAR_MIRRORS',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_SEATS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_CAR_SEATS(
    'android.car.permission.PERMISSION_CONTROL_CAR_SEATS',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_CAR_WINDOWS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_CAR_WINDOWS(
    'android.car.permission.PERMISSION_CONTROL_CAR_WINDOWS',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_DISPLAY_UNITS
  PERMISSION_CONTROL_DISPLAY_UNITS(
    'android.car.permission.PERMISSION_CONTROL_DISPLAY_UNITS',
    false,
  ),

  /// android.car.permission.PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS
  PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS(
    'android.car.permission.PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS',
    false,
  ),

  /// android.car.permission.PERMISSION_CONTROL_ENERGY_PORTS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_ENERGY_PORTS(
    'android.car.permission.PERMISSION_CONTROL_ENERGY_PORTS',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_EXTERIOR_LIGHTS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_EXTERIOR_LIGHTS(
    'android.car.permission.PERMISSION_CONTROL_EXTERIOR_LIGHTS',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_GLOVE_BOX
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_GLOVE_BOX(
    'android.car.permission.PERMISSION_CONTROL_GLOVE_BOX',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_HEAD_UP_DISPLAY
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_HEAD_UP_DISPLAY(
    'android.car.permission.PERMISSION_CONTROL_HEAD_UP_DISPLAY',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_INTERIOR_LIGHTS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_INTERIOR_LIGHTS(
    'android.car.permission.PERMISSION_CONTROL_INTERIOR_LIGHTS',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_POWERTRAIN
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_POWERTRAIN(
    'android.car.permission.PERMISSION_CONTROL_POWERTRAIN',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_STEERING_WHEEL
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_STEERING_WHEEL(
    'android.car.permission.PERMISSION_CONTROL_STEERING_WHEEL',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_VALET_MODE
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_VALET_MODE(
    'android.car.permission.PERMISSION_CONTROL_VALET_MODE',
    true,
  ),

  /// android.car.permission.PERMISSION_CONTROL_WINDSHIELD_WIPERS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_CONTROL_WINDSHIELD_WIPERS(
    'android.car.permission.PERMISSION_CONTROL_WINDSHIELD_WIPERS',
    true,
  ),

  /// android.car.permission.PERMISSION_ENERGY
  PERMISSION_ENERGY('android.car.permission.PERMISSION_ENERGY', false),

  /// android.car.permission.PERMISSION_ENERGY_PORTS
  PERMISSION_ENERGY_PORTS(
    'android.car.permission.PERMISSION_ENERGY_PORTS',
    false,
  ),

  /// android.car.permission.PERMISSION_EXTERIOR_ENVIRONMENT
  PERMISSION_EXTERIOR_ENVIRONMENT(
    'android.car.permission.PERMISSION_EXTERIOR_ENVIRONMENT',
    false,
  ),

  /// android.car.permission.PERMISSION_EXTERIOR_LIGHTS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_EXTERIOR_LIGHTS(
    'android.car.permission.PERMISSION_EXTERIOR_LIGHTS',
    true,
  ),

  /// android.car.permission.PERMISSION_IDENTIFICATION
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_IDENTIFICATION(
    'android.car.permission.PERMISSION_IDENTIFICATION',
    true,
  ),

  /// android.car.permission.PERMISSION_MILEAGE
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_MILEAGE('android.car.permission.PERMISSION_MILEAGE', true),

  /// android.car.permission.PERMISSION_MILEAGE_3P
  PERMISSION_MILEAGE_3P('android.car.permission.PERMISSION_MILEAGE_3P', false),

  /// android.car.permission.PERMISSION_POWERTRAIN
  PERMISSION_POWERTRAIN('android.car.permission.PERMISSION_POWERTRAIN', false),

  /// android.car.permission.PERMISSION_PRIVILEGED_CAR_INFO
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_PRIVILEGED_CAR_INFO(
    'android.car.permission.PERMISSION_PRIVILEGED_CAR_INFO',
    true,
  ),

  /// android.car.permission.PERMISSION_READ_ADAS_SETTINGS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_READ_ADAS_SETTINGS(
    'android.car.permission.PERMISSION_READ_ADAS_SETTINGS',
    true,
  ),

  /// android.car.permission.PERMISSION_READ_ADAS_STATES
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_READ_ADAS_STATES(
    'android.car.permission.PERMISSION_READ_ADAS_STATES',
    true,
  ),

  /// android.car.permission.PERMISSION_READ_BRAKE_INFO
  PERMISSION_READ_BRAKE_INFO(
    'android.car.permission.PERMISSION_READ_BRAKE_INFO',
    false,
  ),

  /// android.car.permission.PERMISSION_READ_CAR_AIRBAGS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_READ_CAR_AIRBAGS(
    'android.car.permission.PERMISSION_READ_CAR_AIRBAGS',
    true,
  ),

  /// android.car.permission.PERMISSION_READ_CAR_HORN
  PERMISSION_READ_CAR_HORN(
    'android.car.permission.PERMISSION_READ_CAR_HORN',
    false,
  ),

  /// android.car.permission.PERMISSION_READ_CAR_PEDALS
  PERMISSION_READ_CAR_PEDALS(
    'android.car.permission.PERMISSION_READ_CAR_PEDALS',
    false,
  ),

  /// android.car.permission.PERMISSION_READ_CAR_SEATS
  PERMISSION_READ_CAR_SEATS(
    'android.car.permission.PERMISSION_READ_CAR_SEATS',
    false,
  ),

  /// android.car.permission.PERMISSION_READ_CAR_SEAT_BELTS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_READ_CAR_SEAT_BELTS(
    'android.car.permission.PERMISSION_READ_CAR_SEAT_BELTS',
    true,
  ),

  /// android.car.permission.PERMISSION_READ_DISPLAY_UNITS
  PERMISSION_READ_DISPLAY_UNITS(
    'android.car.permission.PERMISSION_READ_DISPLAY_UNITS',
    false,
  ),

  /// android.car.permission.PERMISSION_READ_DRIVER_MONITORING_SETTINGS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_READ_DRIVER_MONITORING_SETTINGS(
    'android.car.permission.PERMISSION_READ_DRIVER_MONITORING_SETTINGS',
    true,
  ),

  /// android.car.permission.PERMISSION_READ_DRIVER_MONITORING_STATES
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_READ_DRIVER_MONITORING_STATES(
    'android.car.permission.PERMISSION_READ_DRIVER_MONITORING_STATES',
    true,
  ),

  /// android.car.permission.PERMISSION_READ_EXTERIOR_LIGHTS
  PERMISSION_READ_EXTERIOR_LIGHTS(
    'android.car.permission.PERMISSION_READ_EXTERIOR_LIGHTS',
    false,
  ),

  /// android.car.permission.PERMISSION_READ_HEAD_UP_DISPLAY_STATUS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_READ_HEAD_UP_DISPLAY_STATUS(
    'android.car.permission.PERMISSION_READ_HEAD_UP_DISPLAY_STATUS',
    true,
  ),

  /// android.car.permission.PERMISSION_READ_IMPACT_SENSORS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_READ_IMPACT_SENSORS(
    'android.car.permission.PERMISSION_READ_IMPACT_SENSORS',
    true,
  ),

  /// android.car.permission.PERMISSION_READ_INTERIOR_LIGHTS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_READ_INTERIOR_LIGHTS(
    'android.car.permission.PERMISSION_READ_INTERIOR_LIGHTS',
    true,
  ),

  /// android.car.permission.PERMISSION_READ_STEERING_STATE
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_READ_STEERING_STATE(
    'android.car.permission.PERMISSION_READ_STEERING_STATE',
    true,
  ),

  /// android.car.permission.PERMISSION_READ_STEERING_STATE_3P
  PERMISSION_READ_STEERING_STATE_3P(
    'android.car.permission.PERMISSION_READ_STEERING_STATE_3P',
    false,
  ),

  /// android.car.permission.PERMISSION_READ_ULTRASONICS_SENSOR_DATA
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_READ_ULTRASONICS_SENSOR_DATA(
    'android.car.permission.PERMISSION_READ_ULTRASONICS_SENSOR_DATA',
    true,
  ),

  /// android.car.permission.PERMISSION_READ_VALET_MODE
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_READ_VALET_MODE(
    'android.car.permission.PERMISSION_READ_VALET_MODE',
    true,
  ),

  /// android.car.permission.PERMISSION_READ_WINDSHIELD_WIPERS
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_READ_WINDSHIELD_WIPERS(
    'android.car.permission.PERMISSION_READ_WINDSHIELD_WIPERS',
    true,
  ),

  /// android.car.permission.PERMISSION_READ_WINDSHIELD_WIPERS_3P
  PERMISSION_READ_WINDSHIELD_WIPERS_3P(
    'android.car.permission.PERMISSION_READ_WINDSHIELD_WIPERS_3P',
    false,
  ),

  /// android.car.permission.PERMISSION_SPEED
  PERMISSION_SPEED('android.car.permission.PERMISSION_SPEED', false),

  /// android.car.permission.PERMISSION_TIRES
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_TIRES('android.car.permission.PERMISSION_TIRES', true),

  /// android.car.permission.PERMISSION_TIRES_3P
  PERMISSION_TIRES_3P('android.car.permission.PERMISSION_TIRES_3P', false),

  /// android.car.permission.PERMISSION_VENDOR_EXTENSION
  ///
  /// This permission is a Signature|Privileged permission and requires special access.
  PERMISSION_VENDOR_EXTENSION(
    'android.car.permission.PERMISSION_VENDOR_EXTENSION',
    true,
  );

  const CarPermissions(this.androidName, this.privileged);

  final String androidName;

  final bool privileged;
}
