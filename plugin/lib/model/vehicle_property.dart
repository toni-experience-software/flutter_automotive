// ignore_for_file: doc_directive_unknown, slash_for_doc_comments, constant_identifier_names

// This model file is generated from the VehiclePropertyIds Java Class into a Dart Enum.
// https://android.googlesource.com/platform/packages/services/Car/+/master/car-lib/src/android/car/VehiclePropertyIds.java

/*
 * Copyright (C) 2018 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

library;

import 'car_permissions.dart';

enum VehiclePropertyAccess { unavailable, normal, privileged }

enum VehicleProperty {
  /// VIN of vehicle
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_IDENTIFICATION} to read
  /// property.
  /// Property is not writable.
  INFO_VIN(
    286261504,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_IDENTIFICATION},
    {},
    [],
  ),

  /// Manufacturer of vehicle.
  ///
  /// This property communicates the vehicle's public brand name.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_CAR_INFO} to read property.
  /// Property is not writable.
  INFO_MAKE(
    286261505,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_INFO},
    {},
    [],
  ),

  /// Model of vehicle.
  ///
  /// This property communicates the vehicle's public model name.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_CAR_INFO} to read property.
  /// Property is not writable.
  INFO_MODEL(
    286261506,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_INFO},
    {},
    [],
  ),

  /// Model year of vehicle in YYYY format based on Gregorian calendar.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_CAR_INFO} to read property.
  /// Property is not writable.
  INFO_MODEL_YEAR(
    289407235,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_INFO},
    {},
    [],
  ),

  /// Fuel capacity of the vehicle in milliliters.
  ///
  /// This property communicates the maximum amount of the fuel that can be stored in the
  /// vehicle in milliliters. This property will not be implemented for electric vehicles. That is,
  /// if {@link #INFO_FUEL_TYPE} only contains {@link FuelType#ELECTRIC}, this property will not be
  /// implemented. For EVs, see {@link #INFO_EV_BATTERY_CAPACITY}.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_CAR_INFO} to read property.
  /// Property is not writable.
  INFO_FUEL_CAPACITY(
    291504388,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_INFO},
    {},
    [],
  ),

  /// List the {@link FuelType}s the vehicle may use.
  ///
  /// {@link FuelType#ELECTRIC} will only be included if the vehicle is plug in rechargeable.
  /// Note that for this reason, even though {@link FuelType#ELECTRIC} is not listed as a fuel
  /// type, other EV properties such as {@link #INFO_EV_BATTERY_CAPACITY} can still be supported on
  /// the vehicle.
  ///
  /// For example:
  /// <ul>
  /// <li>FHEVs (Fully Hybrid Electric Vehicles) will not include {@link FuelType#ELECTRIC} in its
  /// {@code Integer[]} value. So {@code INFO_FUEL_TYPE} will be populated as such:
  /// { {@link FuelType#UNLEADED} }.
  /// <li>On the other hand, PHEVs (Plug-in Hybrid Electric Vehicles) are plug in rechargeable,
  /// and hence will include {@link FuelType#ELECTRIC} in {@code INFO_FUEL_TYPE}'s {@code
  /// Integer[]} value. So {@code INFO_FUEL_TYPE} will be populated as such:
  /// { {@link FuelType#UNLEADED}, {@link FuelType#ELECTRIC} }.
  /// </ul>
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_CAR_INFO} to read property.
  /// Property is not writable.
  INFO_FUEL_TYPE(
    289472773,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_INFO},
    {},
    [],
  ),

  /// Nominal usable battery capacity for EV or hybrid vehicle.
  ///
  /// Returns the nominal battery capacity in {@link android.car.VehicleUnit#WATT_HOUR}, if EV
  /// or hybrid. This is the usable battery capacity when the vehicle is new. This value might be
  /// different from {@link #EV_CURRENT_BATTERY_CAPACITY} because {@link
  /// #EV_CURRENT_BATTERY_CAPACITY} returns the real-time usable battery capacity taking into
  /// account factors such as battery aging and temperature dependency.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_CAR_INFO} to read property.
  /// Property is not writable.
  INFO_EV_BATTERY_CAPACITY(
    291504390,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_INFO},
    {},
    [],
  ),

  /// List of {@link android.car.hardware.property.EvChargingConnectorType}s this vehicle may use.
  ///
  /// If the vehicle has multiple charging ports, this property will return all possible
  /// connector types that can be used by at least one charging port on the vehicle.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_CAR_INFO} to read property.
  /// Property is not writable.
  INFO_EV_CONNECTOR_TYPE(
    289472775,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_INFO},
    {},
    [],
  ),

  /// {@link PortLocationType} for the fuel door location.
  ///
  /// This property communicates the location of the fuel door on the vehicle. This property
  /// will not be implemented for electric vehicles. That is, if {@link #INFO_FUEL_TYPE} only
  /// contains {@link FuelType#ELECTRIC}, this property will not be implemented. For EVs, see
  /// {@link #INFO_EV_PORT_LOCATION} or {@link #INFO_MULTI_EV_PORT_LOCATIONS}.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_CAR_INFO} to read property.
  /// Property is not writable.
  INFO_FUEL_DOOR_LOCATION(
    289407240,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_INFO},
    {},
    [],
  ),

  /// {@link PortLocationType} for the EV port location.
  ///
  /// This property communicates the location of the charging port on the EV. If there are
  /// multiple ports on the vehicle, this will communicate the port that enables the fastest
  /// charging on the vehicle. See {@link #INFO_MULTI_EV_PORT_LOCATIONS} to get information on all
  /// port locations.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_CAR_INFO} to read property.
  /// Property is not writable.
  INFO_EV_PORT_LOCATION(
    289407241,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_INFO},
    {},
    [],
  ),

  /// List {@link PortLocationType}s for Multiple EV port locations.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_CAR_INFO} to read property.
  /// Property is not writable.
  INFO_MULTI_EV_PORT_LOCATIONS(
    289472780,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_INFO},
    {},
    [],
  ),

  /// Driver's seat location.
  ///
  /// The only area ID listed in {@link android.car.hardware.CarPropertyConfig#getAreaIds} for
  /// {@code INFO_DRIVER_SEAT} will be {@code 0}.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_CAR_INFO} to read property.
  /// Property is not writable.
  INFO_DRIVER_SEAT(
    356516106,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_INFO},
    {},
    [],
  ),

  /// Vehicle's exterior dimensions in millimeters.
  ///
  /// Exterior dimensions defined in the {@link CarPropertyValue#getValue()} {@code Integer[]}:
  /// <ul>
  /// <li>Integer[0] = height
  /// <li>Integer[1] = length
  /// <li>Integer[2] = width
  /// <li>Integer[3] = width including mirrors
  /// <li>Integer[4] = wheel base
  /// <li>Integer[5] = track width front
  /// <li>Integer[6] = track width rear
  /// <li>Integer[7] = curb to curb turning diameter
  /// </ul>
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_CAR_INFO} to read property.
  /// Property is not writable.
  INFO_EXTERIOR_DIMENSIONS(
    289472779,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_INFO},
    {},
    [],
  ),

  /// Public trim name of the vehicle.
  ///
  /// This property communicates the vehicle's public trim name.
  ///
  /// For example, say an OEM manufactures two different versions of a vehicle model:
  /// <ul>
  /// <li>"makeName modelName" and
  /// <li>"makeName modelName Sport"
  /// </ul>
  /// This property will be empty for the first vehicle (i.e. base model), and set to "Sport"
  /// for the second vehicle.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_CAR_INFO} to read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_ANDROID_B_VEHICLE_PROPERTIES
  INFO_MODEL_TRIM(
    286261517,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_INFO},
    {},
    ['FLAG_ANDROID_B_VEHICLE_PROPERTIES'],
  ),

  /// Vehicle Size Class.
  ///
  /// This property communicates the list of size classifications that the vehicle follows
  /// according to the multiple standards that are defined in {@link
  /// android.car.hardware.property.VehicleSizeClass}
  ///
  /// For example, suppose a vehicle model follows the {@link
  /// android.car.hardware.property.VehicleSizeClass#EU_A_SEGMENT} standard in the EU and the
  /// {@link android.car.hardware.property.VehicleSizeClass#JPN_KEI} standard in Japan. In this
  /// scenario this property must return an intArray = [{@link
  /// android.car.hardware.property.VehicleSizeClass#EU_A_SEGMENT}, {@link
  /// android.car.hardware.property.VehicleSizeClass#JPN_KEI}]. If this vehicle only follows
  /// the EU {@link android.car.hardware.property.VehicleSizeClass#EU_A_SEGMENT} standard, then we
  /// expect intArray = [{@link android.car.hardware.property.VehicleSizeClass#EU_A_SEGMENT}].
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_CAR_INFO} to read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_ANDROID_B_VEHICLE_PROPERTIES
  INFO_VEHICLE_SIZE_CLASS(
    289472782,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_INFO},
    {},
    ['FLAG_ANDROID_B_VEHICLE_PROPERTIES'],
  ),

  /// Current odometer value of the vehicle in kilometers.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_MILEAGE_3P} or Signature|Privileged
  /// permission {@link Car#PERMISSION_MILEAGE} to read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_ANDROID_B_VEHICLE_PROPERTIES
  PERF_ODOMETER(
    291504644,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_MILEAGE_3P, CarPermissions.PERMISSION_MILEAGE},
    {},
    ['FLAG_ANDROID_B_VEHICLE_PROPERTIES'],
  ),

  /// Speed of the vehicle in meters per second.
  ///
  /// When the vehicle is moving forward, {@code PERF_VEHICLE_SPEED} is positive and negative
  /// when the vehicle is moving backward. Also, this value is independent of gear value ({@link
  /// #CURRENT_GEAR} or {@link #GEAR_SELECTION}). For example, if {@link #GEAR_SELECTION} is
  /// {@link VehicleGear#GEAR_NEUTRAL}, {@code PERF_VEHICLE_SPEED} is positive when the vehicle is
  /// moving forward, negative when moving backward, and zero when not moving.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_SPEED} to read property.
  /// Property is not writable.
  PERF_VEHICLE_SPEED(
    291504647,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_SPEED},
    {},
    [],
  ),

  /// Speed of the vehicle in meters per second for displays.
  ///
  /// Some cars display a slightly slower speed than the actual speed. This is
  /// usually displayed on the speedometer.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_SPEED} to read property.
  /// Property is not writable.
  PERF_VEHICLE_SPEED_DISPLAY(
    291504648,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_SPEED},
    {},
    [],
  ),

  /// Front bicycle model steering angle for vehicle in degrees.
  ///
  /// Left is negative.
  ///
  /// This property is independent of the angle of the steering wheel. This property
  /// communicates the angle of the front wheels with respect to the vehicle, not the angle of the
  /// steering wheel.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_READ_STEERING_STATE_3P} or
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_STEERING_STATE} to read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_25Q2_3P_PERMISSIONS
  PERF_STEERING_ANGLE(
    291504649,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {
      CarPermissions.PERMISSION_READ_STEERING_STATE_3P,
      CarPermissions.PERMISSION_READ_STEERING_STATE,
    },
    {},
    ['FLAG_VEHICLE_PROPERTY_25Q2_3P_PERMISSIONS'],
  ),

  /// Rear bicycle model steering angle for vehicle in degrees.
  ///
  /// Left is negative.
  ///
  /// This property is independent of the angle of the steering wheel. This property
  /// communicates the angle of the rear wheels with respect to the vehicle, not the angle of the
  /// steering wheel.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_STEERING_STATE} to read
  /// property.
  /// Property is not writable.
  PERF_REAR_STEERING_ANGLE(
    291504656,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_STEERING_STATE},
    {},
    [],
  ),

  /// Instantaneous Fuel Economy in L/100km.
  ///
  /// This property communicates the instantaneous fuel economy of the vehicle in units of
  /// L/100km. Clients can reference the value of {@link #DISTANCE_DISPLAY_UNITS}, {@link
  /// #FUEL_VOLUME_DISPLAY_UNITS}, and {@link #FUEL_CONSUMPTION_UNITS_DISTANCE_OVER_VOLUME} before
  /// displaying this property to the user to match the display units used by rest of the system.
  ///
  /// For the EV version of this property, see {@link #INSTANTANEOUS_EV_EFFICIENCY}.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_MILEAGE_3P} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_ANDROID_B_VEHICLE_PROPERTIES
  INSTANTANEOUS_FUEL_ECONOMY(
    291504657,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_MILEAGE_3P},
    {},
    ['FLAG_ANDROID_B_VEHICLE_PROPERTIES'],
  ),

  /// Instantaneous EV efficiency in km/kWh.
  ///
  /// This property communicates the instantaneous EV battery efficiency of the vehicle in units
  /// of km/kWh. Clients can reference the value of  {@link #DISTANCE_DISPLAY_UNITS} and {@link
  /// #EV_BATTERY_DISPLAY_UNITS} before displaying this property to the user to match the display
  /// units used by rest of the system.
  ///
  /// For the fuel version of this property, see {@link
  /// #INSTANTANEOUS_FUEL_ECONOMY}.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_MILEAGE_3P} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_ANDROID_B_VEHICLE_PROPERTIES
  INSTANTANEOUS_EV_EFFICIENCY(
    291504658,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_MILEAGE_3P},
    {},
    ['FLAG_ANDROID_B_VEHICLE_PROPERTIES'],
  ),

  /// Temperature of engine coolant in celsius.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CAR_ENGINE_DETAILED} to read
  /// property.
  /// Property is not writable.
  ENGINE_COOLANT_TEMP(
    291504897,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_ENGINE_DETAILED},
    {},
    [],
  ),

  /// Engine oil level.
  ///
  /// Returns the status of the oil level for the vehicle. See {@code VehicleOilLevel} for
  /// possible values for {@code ENGINE_OIL_LEVEL}.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CAR_ENGINE_DETAILED} to read
  /// property.
  /// Property is not writable.
  ENGINE_OIL_LEVEL(
    289407747,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_ENGINE_DETAILED},
    {},
    [],
  ),

  /// Temperature of engine oil in celsius.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CAR_ENGINE_DETAILED} to read
  /// property.
  /// Property is not writable.
  ENGINE_OIL_TEMP(
    291504900,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_ENGINE_DETAILED},
    {},
    [],
  ),

  /// Engine rpm.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_CAR_ENGINE_DETAILED_3P} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CAR_ENGINE_DETAILED} to read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_25Q2_3P_PERMISSIONS
  ENGINE_RPM(
    291504901,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {
      CarPermissions.PERMISSION_CAR_ENGINE_DETAILED_3P,
      CarPermissions.PERMISSION_CAR_ENGINE_DETAILED,
    },
    {},
    ['FLAG_VEHICLE_PROPERTY_25Q2_3P_PERMISSIONS'],
  ),

  /// Represents feature for engine idle automatic stop.
  ///
  /// If true, the vehicle may automatically shut off the engine when it is not needed and then
  /// automatically restart it when needed.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CAR_ENGINE_DETAILED} to read and
  /// write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  ENGINE_IDLE_AUTO_STOP_ENABLED(
    287310624,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CAR_ENGINE_DETAILED},
    {CarPermissions.PERMISSION_CAR_ENGINE_DETAILED},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Impact detected.
  ///
  /// Bit flag property to relay information on whether an impact has occurred on a particular
  /// side of the vehicle as described through the {@link
  /// android.car.hardware.property.ImpactSensorLocation} enum. As a bit flag property, this
  /// property can be set to multiple ORed together values of the enum when necessary.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which bit flags
  /// from {@link android.car.hardware.property.ImpactSensorLocation} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_IMPACT_SENSORS} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  IMPACT_DETECTED(
    289407792,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_IMPACT_SENSORS},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Vehicle horn engaged.
  ///
  /// This property communicates if the vehicle's horn is currently engaged or not. If true, the
  /// horn is engaged. If false, the horn is disengaged.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_READ_CAR_HORN} or dangerous permission {@link
  /// Car#PERMISSION_CONTROL_CAR_HORN} to read property.
  /// Dangerous permission {@link Car#PERMISSION_CONTROL_CAR_HORN} to write property.
  ///
  /// # Availability Flag
  /// FLAG_ANDROID_B_VEHICLE_PROPERTIES
  VEHICLE_HORN_ENGAGED(
    287310656,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.normal,
    {
      CarPermissions.PERMISSION_READ_CAR_HORN,
      CarPermissions.PERMISSION_CONTROL_CAR_HORN,
    },
    {CarPermissions.PERMISSION_CONTROL_CAR_HORN},
    ['FLAG_ANDROID_B_VEHICLE_PROPERTIES'],
  ),

  /// Reports wheel ticks.
  ///
  /// The first element in the array is a reset count.  A reset indicates
  /// previous tick counts are not comparable with this and future ones.  Some
  /// sort of discontinuity in tick counting has occurred.
  ///
  /// The next four elements represent ticks for individual wheels in the
  /// following order: front left, front right, rear right, rear left.  All
  /// tick counts are cumulative.  Tick counts increment when the vehicle
  /// moves forward, and decrement when vehicles moves in reverse.  The ticks
  /// should be reset to 0 when the vehicle is started by the user.
  ///
  /// <ul>
  /// <li>Long[0] = reset count
  /// <li>Long[1] = front left ticks
  /// <li>Long[2] = front right ticks
  /// <li>Long[3] = rear right ticks
  /// <li>Long[4] = rear left ticks
  /// </ul>
  ///
  /// configArray is used to indicate the micrometers-per-wheel-tick values and
  /// which wheels are supported. Each micrometers-per-wheel-tick value is static (i.e. will not
  /// update based on wheel's status) and a best approximation. For example, if a vehicle has
  /// multiple rim/tire size options, the micrometers-per-wheel-tick values are set to those for
  /// the typically expected rim/tire size. configArray is set as follows:
  ///
  /// <ul>
  /// <li>configArray[0], bits [0:3] = supported wheels. Uses {@link VehicleAreaWheel}. For
  /// example, if all wheels are supported, then configArray[0] = {@link
  /// VehicleAreaWheel#WHEEL_LEFT_FRONT} | {@link VehicleAreaWheel#WHEEL_RIGHT_FRONT} | {@link
  /// VehicleAreaWheel#WHEEL_LEFT_REAR} | {@link VehicleAreaWheel#WHEEL_RIGHT_REAR}
  /// <li>configArray[1] = micrometers per front left wheel tick
  /// <li>configArray[2] = micrometers per front right wheel tick
  /// <li>configArray[3] = micrometers per rear right wheel tick
  /// <li>configArray[4] = micrometers per rear left wheel tick
  /// </ul>
  ///
  /// NOTE:  If a wheel is not supported, its value is always 0.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_SPEED} to read property.
  /// Property is not writable.
  WHEEL_TICK(
    290521862,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_SPEED},
    {},
    [],
  ),

  /// Fuel level in milliliters.
  ///
  /// This property communicates the current amount of fuel remaining in the vehicle in
  /// milliliters. This property will not be implemented for electric vehicles. That is, if {@link
  /// #INFO_FUEL_TYPE} only contains {@link FuelType#ELECTRIC}, this property will not be
  /// implemented. For EVs, see {@link #EV_BATTERY_LEVEL}.
  ///
  /// This property's value will not exceed {@link #INFO_FUEL_CAPACITY}.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_ENERGY} to read property.
  /// Property is not writable.
  FUEL_LEVEL(
    291504903,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_ENERGY},
    {},
    [],
  ),

  /// Fuel door open.
  ///
  /// This property communicates whether the fuel door on the vehicle is open or not. This
  /// property will not be implemented for electric vehicles. That is, if {@link #INFO_FUEL_TYPE}
  /// only contains {@link FuelType#ELECTRIC}, this property will not be implemented. For EVs, see
  /// {@link #EV_CHARGE_PORT_OPEN}.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_ENERGY_PORTS} or Signature|Privileged permission
  /// {@link Car#PERMISSION_CONTROL_ENERGY_PORTS} to read property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ENERGY_PORTS} to
  /// write property.
  FUEL_DOOR_OPEN(
    287310600,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_ENERGY_PORTS,
      CarPermissions.PERMISSION_CONTROL_ENERGY_PORTS,
    },
    {CarPermissions.PERMISSION_CONTROL_ENERGY_PORTS},
    [],
  ),

  /// EV battery level.
  ///
  /// Returns the current battery level in {@link android.car.VehicleUnit#WATT_HOUR}, if EV or
  /// hybrid. This value will not exceed {@link #EV_CURRENT_BATTERY_CAPACITY}. To calculate the
  /// battery percentage, use:
  /// ({@link #EV_BATTERY_LEVEL}/{@link #EV_CURRENT_BATTERY_CAPACITY})*100.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_ENERGY} to read property.
  /// Property is not writable.
  EV_BATTERY_LEVEL(
    291504905,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_ENERGY},
    {},
    [],
  ),

  /// Current usable battery capacity for EV or hybrid vehicle.
  ///
  /// Returns the actual value of battery capacity in {@link android.car.VehicleUnit#WATT_HOUR},
  /// if EV or hybrid. This property captures the real-time usable battery capacity taking into
  /// account factors such as battery aging and temperature dependency. Therefore, this value might
  /// be different from {@link #INFO_EV_BATTERY_CAPACITY} because {@link #INFO_EV_BATTERY_CAPACITY}
  /// returns the nominal battery capacity from when the vehicle was new.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_ENERGY} to read property.
  /// Property is not writable.
  EV_CURRENT_BATTERY_CAPACITY(
    291504909,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_ENERGY},
    {},
    [],
  ),

  /// EV charge port open.
  ///
  /// If the vehicle has multiple charging ports, this property will return true if any of the
  /// charge ports are open.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_ENERGY_PORTS} or Signature|Privileged permission
  /// {@link Car#PERMISSION_CONTROL_ENERGY_PORTS} to read property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ENERGY_PORTS} to
  /// write property.
  EV_CHARGE_PORT_OPEN(
    287310602,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_ENERGY_PORTS,
      CarPermissions.PERMISSION_CONTROL_ENERGY_PORTS,
    },
    {CarPermissions.PERMISSION_CONTROL_ENERGY_PORTS},
    [],
  ),

  /// EV charge port connected.
  ///
  /// If the vehicle has multiple charging ports, this property will return true if any of the
  /// charge ports are connected.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_ENERGY_PORTS} to read property.
  /// Property is not writable.
  EV_CHARGE_PORT_CONNECTED(
    287310603,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_ENERGY_PORTS},
    {},
    [],
  ),

  /// EV instantaneous charge rate in milliwatts.
  ///
  /// Positive rate indicates battery is being charged, and Negative rate indicates battery
  /// being discharged.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_ENERGY} to read property.
  /// Property is not writable.
  EV_BATTERY_INSTANTANEOUS_CHARGE_RATE(
    291504908,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_ENERGY},
    {},
    [],
  ),

  /// Range remaining in meters.
  ///
  /// Range remaining accounts for all energy sources in a vehicle.  For example, a hybrid car's
  /// range will be the sum of the ranges based on fuel and battery.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_ENERGY} or Signature|Privileged permission
  /// {@link Car#PERMISSION_ADJUST_RANGE_REMAINING} to read property.
  /// Signature|Privileged permission {@link Car#PERMISSION_ADJUST_RANGE_REMAINING} to write
  /// property.
  RANGE_REMAINING(
    291504904,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_ENERGY,
      CarPermissions.PERMISSION_ADJUST_RANGE_REMAINING,
    },
    {CarPermissions.PERMISSION_ADJUST_RANGE_REMAINING},
    [],
  ),

  /// EV battery average temperature
  ///
  /// Exposes the temperature of the battery in an EV. If multiple batteries exist in the EV, or
  /// multiple temperature sensors exist, this property will be set to a meaningful weighted
  /// average that best represents the overall temperature of the battery system.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_ENERGY} to read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_ANDROID_VIC_VEHICLE_PROPERTIES
  EV_BATTERY_AVERAGE_TEMPERATURE(
    291504910,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_ENERGY},
    {},
    ['FLAG_ANDROID_VIC_VEHICLE_PROPERTIES'],
  ),

  /// Tire pressure in kilopascals.
  ///
  /// For each area ID listed in {@link android.car.hardware.CarPropertyConfig#getAreaIds}, the
  /// corresponding {@link android.car.hardware.property.AreaIdConfig#getMinValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the OEM recommended tire
  /// pressure range for that tire.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_TIRES_3P} or Signature|Privileged permission
  /// {@link Car#PERMISSION_TIRES} to read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_25Q2_3P_PERMISSIONS
  TIRE_PRESSURE(
    392168201,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_TIRES_3P, CarPermissions.PERMISSION_TIRES},
    {},
    ['FLAG_VEHICLE_PROPERTY_25Q2_3P_PERMISSIONS'],
  ),

  /// Critically low tire pressure.
  ///
  /// For each area ID listed in {@link android.car.hardware.CarPropertyConfig#getAreaIds}, the
  /// corresponding {@code CRITICALLY_LOW_TIRE_PRESSURE} will be less than or equal the {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} of {@link #TIRE_PRESSURE} for the
  /// same area ID.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_TIRES} to read property.
  /// Property is not writable.
  CRITICALLY_LOW_TIRE_PRESSURE(
    392168202,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_TIRES},
    {},
    [],
  ),

  /// Accelerator pedal compression percentage.
  ///
  /// This property communicates the percentage that the physical accelerator
  /// pedal in the vehicle is compressed. This property returns a float value from
  /// 0 to 100.
  ///
  /// 0 indicates the pedal's uncompressed position.
  /// 100 indicates the pedal's maximally compressed position.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_READ_CAR_PEDALS} to read property.
  /// Property is not writable
  ///
  /// # Availability Flag
  /// FLAG_ANDROID_B_VEHICLE_PROPERTIES
  ACCELERATOR_PEDAL_COMPRESSION_PERCENTAGE(
    291504911,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_CAR_PEDALS},
    {},
    ['FLAG_ANDROID_B_VEHICLE_PROPERTIES'],
  ),

  /// Brake pedal compression percentage.
  ///
  /// This property communicates the percentage that the physical brake pedal
  /// in the vehicle is compressed. This property returns a float value from 0 to
  /// 100.
  ///
  /// 0 indicates the pedal's uncompressed position.
  /// 100 indicates the pedal's maximally compressed position.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_READ_CAR_PEDALS} to read property.
  /// Property is not writable
  ///
  /// # Availability Flag
  /// FLAG_ANDROID_B_VEHICLE_PROPERTIES
  BRAKE_PEDAL_COMPRESSION_PERCENTAGE(
    291504912,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_CAR_PEDALS},
    {},
    ['FLAG_ANDROID_B_VEHICLE_PROPERTIES'],
  ),

  /// Brake pad wear percentage.
  ///
  /// This property communicates the amount of brake pad wear accumulated by
  /// the vehicle as a percentage. This property returns a float value from 0
  /// to 100.
  ///
  /// 0 indicates the brake pad has no wear.
  /// 100 indicates the brake pad is maximally worn.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_READ_BRAKE_INFO} to read property.
  /// Property is not writable
  ///
  /// # Availability Flag
  /// FLAG_ANDROID_B_VEHICLE_PROPERTIES
  BRAKE_PAD_WEAR_PERCENTAGE(
    392168209,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_BRAKE_INFO},
    {},
    ['FLAG_ANDROID_B_VEHICLE_PROPERTIES'],
  ),

  /// Brake fluid level low.
  ///
  /// This property communicates that the brake fluid level in the vehicle is low according to
  /// the OEM. This value will match the vehicle's brake fluid level status as displayed on the
  /// instrument cluster. If the brake fluid level is low, this property will be set to {@code
  /// true}. If not, it will be set to {@code false}.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_READ_BRAKE_INFO} to read property.
  /// Property is not writable
  ///
  /// # Availability Flag
  /// FLAG_ANDROID_B_VEHICLE_PROPERTIES
  BRAKE_FLUID_LEVEL_LOW(
    287310610,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_BRAKE_INFO},
    {},
    ['FLAG_ANDROID_B_VEHICLE_PROPERTIES'],
  ),

  /// Vehicle Passive Suspension Height in mm.
  ///
  /// This property communicates the real-time suspension displacement of the vehicle relative
  /// to its neutral position, given in mm. In other words, the displacement of the suspension at
  /// any given point in time relative to the suspension's position when the vehicle is on a flat
  /// surface with no passengers or cargo. When the suspension is compressed in comparison to the
  /// neutral position, the value should be negative. When the suspension is decompressed in
  /// comparison to the neutral position, the value should be positive.
  ///
  /// Examples for further clarity:
  /// <ul>
  /// <li>1) Suppose the user is driving on a smooth flat surface, and all wheels are currently
  /// compressed by 2 cm in comparison to the default suspension height. In this scenario, this
  /// property will be set to -20 for all wheels.
  /// <li>2) Suppose the user drives over a pothole. While the front left wheel is over the
  /// pothole, it's decompressed by 3 cm in comparison to the rest of the wheels, or 1 cm in
  /// comparison to the default suspension height. All the others are still compressed by 2 cm.
  /// In this scenario, this property will be set to -20 for all wheels except for the front
  /// left, which will be set to 10.
  /// </ul>
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#hasMinSupportedValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#hasMaxSupportedValue()} will be {@code true} for
  /// all areas.
  ///
  /// {@link android.car.hardware.property.MinMaxSupportedValue#getMinValue()} represents the
  /// lower bound of the suspension height for the wheel at the specified area ID.
  ///
  /// {@link android.car.hardware.property.MinMaxSupportedValue#getMaxValue()} represents the
  /// upper bound of the suspension height for the wheel at the specified area ID.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CAR_DYNAMICS_STATE} to read
  /// property.
  /// Property is not writable
  ///
  /// # Availability Flag
  /// FLAG_ANDROID_B_VEHICLE_PROPERTIES
  VEHICLE_PASSIVE_SUSPENSION_HEIGHT(
    390071059,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_DYNAMICS_STATE},
    {},
    ['FLAG_ANDROID_B_VEHICLE_PROPERTIES'],
  ),

  /// Currently selected gear by user.
  ///
  /// See {@link VehicleGear} for gear value enum.
  ///
  /// configArray represents the list of supported gears for the vehicle. For example,
  /// configArray for an EV vehicle is set as follows:
  ///
  /// <ul>
  /// <li>configArray[0] = {@link VehicleGear#GEAR_REVERSE}
  /// <li>configArray[1] = {@link VehicleGear#GEAR_PARK}
  /// <li>configArray[2] = {@link VehicleGear#GEAR_DRIVE}
  /// </ul>
  ///
  /// Example automatic transmission configArray:
  ///
  /// <ul>
  /// <li>configArray[0] = {@link VehicleGear#GEAR_NEUTRAL}
  /// <li>configArray[1] = {@link VehicleGear#GEAR_REVERSE}
  /// <li>configArray[2] = {@link VehicleGear#GEAR_PARK}
  /// <li>configArray[3] = {@link VehicleGear#GEAR_DRIVE}
  /// <li>configArray[4] = {@link VehicleGear#GEAR_FIRST}
  /// <li>configArray[5] = {@link VehicleGear#GEAR_SECOND}
  /// <li>...
  /// </ul>
  ///
  /// Example manual transmission configArray:
  ///
  /// <ul>
  /// <li>configArray[0] = {@link VehicleGear#GEAR_NEUTRAL}
  /// <li>configArray[1] = {@link VehicleGear#GEAR_REVERSE}
  /// <li>configArray[4] = {@link VehicleGear#GEAR_FIRST}
  /// <li>configArray[5] = {@link VehicleGear#GEAR_SECOND}
  /// <li>...
  /// </ul>
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_POWERTRAIN} to read property.
  /// Property is not writable.
  GEAR_SELECTION(
    289408000,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_POWERTRAIN},
    {},
    [],
  ),

  /// Vehicle transmission's current {@link VehicleGear}.
  ///
  /// {@code CURRENT_GEAR}'s value may not match that of {@link
  /// VehiclePropertyIds#GEAR_SELECTION}. For example, if the {@link
  /// VehiclePropertyIds#GEAR_SELECTION} is {@link VehicleGear#GEAR_DRIVE} in a vehicle with an
  /// automatic transmission, the {@code CURRENT_GEAR} will be one of {@link
  /// VehicleGear#GEAR_FIRST}, {@link VehicleGear#GEAR_SECOND}, etc, which reflects the actual gear
  /// the transmission is currently running in.
  ///
  /// configArray represents the list of supported {@link VehicleGear}s for {@code
  /// CURRENT_GEAR}. For example, the configArray for an EV vehicle is set as follows:
  ///
  /// <ul>
  /// <li>configArray[0] = {@link VehicleGear#GEAR_REVERSE}
  /// <li>configArray[1] = {@link VehicleGear#GEAR_PARK}
  /// <li>configArray[2] = {@link VehicleGear#GEAR_DRIVE}
  /// </ul>
  ///
  /// Example automatic transmission configArray:
  ///
  /// <ul>
  /// <li>configArray[0] = {@link VehicleGear#GEAR_NEUTRAL}
  /// <li>configArray[1] = {@link VehicleGear#GEAR_REVERSE}
  /// <li>configArray[2] = {@link VehicleGear#GEAR_PARK}
  /// <li>configArray[4] = {@link VehicleGear#GEAR_FIRST}
  /// <li>configArray[5] = {@link VehicleGear#GEAR_SECOND}
  /// <li>...
  /// </ul>
  ///
  /// Example manual transmission configArray:
  ///
  /// <ul>
  /// <li>configArray[0] = {@link VehicleGear#GEAR_NEUTRAL}
  /// <li>configArray[1] = {@link VehicleGear#GEAR_REVERSE}
  /// <li>configArray[4] = {@link VehicleGear#GEAR_FIRST}
  /// <li>configArray[5] = {@link VehicleGear#GEAR_SECOND}
  /// <li>...
  /// </ul>
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_POWERTRAIN} to read property.
  /// Property is not writable.
  CURRENT_GEAR(
    289408001,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_POWERTRAIN},
    {},
    [],
  ),

  /// Parking brake state.
  ///
  /// {@code PARKING_BRAKE_ON} is true indicates that the car's parking brake is currently
  /// engaged. False implies that the car's parking brake is currently disengaged.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_POWERTRAIN} to read property.
  /// Property is not writable.
  PARKING_BRAKE_ON(
    287310850,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_POWERTRAIN},
    {},
    [],
  ),

  /// Auto-apply parking brake.
  ///
  /// {@code PARKING_BRAKE_AUTO_APPLY} is true indicates that the car's automatic parking brake
  /// feature is currently enabled. False indicates that the car's automatic parking brake feature
  /// is currently disabled.
  ///
  /// This property is often confused with {@link #PARKING_BRAKE_ON}. The difference is that
  /// {@link #PARKING_BRAKE_ON} describes whether the actual parking brake is currently on/off,
  /// whereas {@code PARKING_BRAKE_AUTO_APPLY} describes whether the feature of automatic parking
  /// brake is enabled/disabled, and does not describe the current state of the actual parking
  /// brake.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_POWERTRAIN} to read property.
  /// Property is not writable.
  PARKING_BRAKE_AUTO_APPLY(
    287310851,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_POWERTRAIN},
    {},
    [],
  ),

  /// Regenerative braking level of an electronic vehicle.
  ///
  /// Returns the current setting for the regenerative braking level. Larger setting values mean
  /// more energy regenerated from braking while smaller setting values mean less energy
  /// regenerated from braking. 0 means the setting for no regenerative braking. See {@link
  /// android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible values.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_POWERTRAIN} or Signature|Privileged permission
  /// {@link Car#PERMISSION_CONTROL_POWERTRAIN} to read property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_POWERTRAIN} to write
  /// property.
  EV_BRAKE_REGENERATION_LEVEL(
    289408012,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_POWERTRAIN,
      CarPermissions.PERMISSION_CONTROL_POWERTRAIN,
    },
    {CarPermissions.PERMISSION_CONTROL_POWERTRAIN},
    [],
  ),

  /// Represents property for the current stopping mode of the vehicle.
  ///
  /// For the global area ID, the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} obtained from {@link
  /// android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which enum values from
  /// {@code EvStoppingMode} are supported. {@code EvStoppingMode} may be extended to include more
  /// states in the future.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_POWERTRAIN} or Signature|Privileged permission
  /// {@link Car#PERMISSION_CONTROL_POWERTRAIN} to read property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_POWERTRAIN} to write
  /// property.
  EV_STOPPING_MODE(
    289408013,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_POWERTRAIN,
      CarPermissions.PERMISSION_CONTROL_POWERTRAIN,
    },
    {CarPermissions.PERMISSION_CONTROL_POWERTRAIN},
    [],
  ),

  /// Warning for fuel low level.
  ///
  /// {@code FUEL_LEVEL_LOW} corresponds to the low fuel warning on the dashboard. Once {@code
  /// FUEL_LEVEL_LOW} is set, it should not be cleared until more fuel is added to the vehicle.
  /// This property may take into account all fuel sources for a vehicle - for example:
  /// <ul>
  /// <li>For a gas powered vehicle, this property is based solely on gas level.
  /// <li>For a battery powered vehicle, this property is based solely on battery level.
  /// <li>For a hybrid vehicle, this property may be based on the combination of gas and
  /// battery levels, at the OEM's discretion.
  /// </ul>
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_ENERGY} to read property.
  /// Property is not writable.
  FUEL_LEVEL_LOW(
    287310853,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_ENERGY},
    {},
    [],
  ),

  /// Night mode.
  ///
  /// True indicates that the night mode sensor has detected that the car cabin environment has
  /// low light.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_EXTERIOR_ENVIRONMENT} to read property.
  /// Property is not writable.
  NIGHT_MODE(
    287310855,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_EXTERIOR_ENVIRONMENT},
    {},
    [],
  ),

  /// State of the vehicles turn signals
  ///
  /// @deprecated because it ambiguously defines the state of the vehicle turn signals without
  /// making clear if it means the state of the turn signal lights or the state of the turn signal
  /// switch. {@link #TURN_SIGNAL_LIGHT_STATE} and {@link #TURN_SIGNAL_SWITCH} rectify this
  /// problem.
  ///
  /// See {@code VehicleTurnSignal} for possible values for {@code TURN_SIGNAL_STATE}.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_EXTERIOR_LIGHTS} to read
  /// property.
  /// Property is not writable.
  TURN_SIGNAL_STATE(
    289408008,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_EXTERIOR_LIGHTS},
    {},
    [],
  ),

  /// Vehicle's ignition state.
  ///
  /// See {@link VehicleIgnitionState} for possible values for {@code IGNITION_STATE}.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_POWERTRAIN} to read property.
  /// Property is not writable.
  IGNITION_STATE(
    289408009,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_POWERTRAIN},
    {},
    [],
  ),

  /// ABS is active.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CAR_DYNAMICS_STATE} to read
  /// property.
  /// Property is not writable.
  ABS_ACTIVE(
    287310858,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_DYNAMICS_STATE},
    {},
    [],
  ),

  /// Traction Control is active.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CAR_DYNAMICS_STATE} to read
  /// property.
  /// Property is not writable.
  TRACTION_CONTROL_ACTIVE(
    287310859,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_DYNAMICS_STATE},
    {},
    [],
  ),

  /// Enable or disable Electronic Stability Control (ESC).
  ///
  /// Returns true if ESC is enabled and false if ESC is disabled. When ESC is enabled, a system
  /// in the vehicle should be controlling the tires during instances with high risk of skidding to
  /// actively prevent the same from happening.
  ///
  /// This property is defined as read_write, but OEMs have the option to implement it as read
  /// only.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CAR_DYNAMICS_STATE} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_DYNAMICS_STATE} to read
  /// property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_DYNAMICS_STATE} to
  /// write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  ELECTRONIC_STABILITY_CONTROL_ENABLED(
    287310862,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_CAR_DYNAMICS_STATE,
      CarPermissions.PERMISSION_CONTROL_CAR_DYNAMICS_STATE,
    },
    {CarPermissions.PERMISSION_CONTROL_CAR_DYNAMICS_STATE},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Electronic Stability Control (ESC) state.
  ///
  /// Returns the current state of ESC. This property will always return a valid state defined
  /// in {@link android.car.hardware.property.ElectronicStabilityControlState} or {@link
  /// android.car.hardware.property.ErrorState}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.ElectronicStabilityControlState} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CAR_DYNAMICS_STATE} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  ELECTRONIC_STABILITY_CONTROL_STATE(
    289408015,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_DYNAMICS_STATE},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Turn signal light state.
  ///
  /// This property communicates the actual state of the turn signal lights. It is independent
  /// from the actual turn signal switch state or the hazard lights button state.
  ///
  /// Examples:
  /// <ul>
  /// <li>1) Left turn signal light is currently pulsing, right turn signal light is currently
  /// off. This property will return {@link VehicleTurnSignal#STATE_LEFT} while the light is on
  /// during the pulse, and {@link VehicleTurnSignal#STATE_NONE} when it is off during the pulse.
  /// <li>2) Right turn signal light is currently pulsing, left turn signal light is currently
  /// off. This property will return {@link VehicleTurnSignal#STATE_RIGHT} while the light is on
  /// during the pulse, and {@link VehicleTurnSignal#STATE_NONE} when it is off during the pulse.
  /// <li>3) Both turn signal lights are currently pulsing (e.g. when hazard lights switch is
  /// on). This property will return {@link VehicleTurnSignal#STATE_LEFT} | {@link
  /// VehicleTurnSignal#STATE_RIGHT} while the lights are on during the pulse, and {@link
  /// VehicleTurnSignal#STATE_NONE} when they are off during the pulse.
  /// </ul>
  ///
  /// This is different from the function of {@link #TURN_SIGNAL_SWITCH}, which must communicate
  /// the state of the turn signal lever/switch.
  ///
  /// Note that this property uses {@link VehicleTurnSignal} as a bit flag, unlike {@link
  /// #TURN_SIGNAL_SWITCH}, which uses it like a regular enum. This means this property supports
  /// ORed together values in {@link VehicleTurnSignal}.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_READ_EXTERIOR_LIGHTS} or Signature|Privileged
  /// permission {@link Car#PERMISSION_CONTROL_EXTERIOR_LIGHTS} to read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_ANDROID_B_VEHICLE_PROPERTIES
  TURN_SIGNAL_LIGHT_STATE(
    289408016,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {
      CarPermissions.PERMISSION_READ_EXTERIOR_LIGHTS,
      CarPermissions.PERMISSION_CONTROL_EXTERIOR_LIGHTS,
    },
    {},
    ['FLAG_ANDROID_B_VEHICLE_PROPERTIES'],
  ),

  /// Turn signal switch.
  ///
  /// This property communicates the state of the turn signal lever/switch. This is different
  /// from the function of {@link #TURN_SIGNAL_LIGHT_STATE}, which must communicate the actual
  /// state of the turn signal lights.
  ///
  /// Note that this property uses {@link VehicleTurnSignal} as a regular enum, unlike {@link
  /// #TURN_SIGNAL_LIGHT_STATE}, which uses it like a bit flag. This means this property does not
  /// support ORed together values in {@link VehicleTurnSignal}.
  ///
  /// This property is defined as read_write, but OEMs have the option to implement it as read
  /// only.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_READ_EXTERIOR_LIGHTS} or Signature|Privileged
  /// permission {@link Car#PERMISSION_CONTROL_EXTERIOR_LIGHTS} to read property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_EXTERIOR_LIGHTS} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_ANDROID_B_VEHICLE_PROPERTIES
  TURN_SIGNAL_SWITCH(
    289408017,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_EXTERIOR_LIGHTS,
      CarPermissions.PERMISSION_CONTROL_EXTERIOR_LIGHTS,
    },
    {CarPermissions.PERMISSION_CONTROL_EXTERIOR_LIGHTS},
    ['FLAG_ANDROID_B_VEHICLE_PROPERTIES'],
  ),

  /// Fan speed setting.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  HVAC_FAN_SPEED(
    356517120,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// Fan direction setting.
  ///
  /// The supported values for this property is exposed via {@link #HVAC_FAN_DIRECTION_AVAILABLE}.
  /// Caller should not call {@link CarPropertyManager#getSupportedValuesList} or
  /// {@link CarPropertyManager#getMinMaxSupportedValue} or
  /// {@link AreaIdConfig#getSupportedEnumValues}.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  HVAC_FAN_DIRECTION(
    356517121,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// HVAC current temperature in celsius.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// property.
  /// Property is not writable.
  HVAC_TEMPERATURE_CURRENT(
    358614274,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {},
    [],
  ),

  /// HVAC target temperature set in Celsius.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the minimum
  /// temperature setting in Celsius.
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the maximum
  /// temperature setting in Celsius.
  ///
  /// The vehicle may not support setting a continuous range of temperature values in between
  /// the min and max values.
  ///
  /// Therefore, if the vehicle supports {@link #HVAC_TEMPERATURE_VALUE_SUGGESTION}, the
  /// application should use that property to get a supported value before setting {@code
  /// HVAC_TEMPERATURE_SET}. The application should also use {@link
  /// #HVAC_TEMPERATURE_VALUE_SUGGESTION} for converting the temperature from Celsius to Fahrenheit
  /// and vice versa for this vehicle.
  ///
  /// Else if the {@link android.car.hardware.CarPropertyConfig#getConfigArray()} is defined,
  /// then it represents the list of valid temperature values that can be set. It also describes a
  /// lookup table to convert the temperature from Celsius to Fahrenheit and vice versa for this
  /// vehicle.
  ///
  /// The {@code configArray} is set as follows:
  /// <ul>
  /// <li>{@code configArray[0]} is [the lower bound of the supported temperature in Celsius]
  /// * 10.
  /// <li>{@code configArray[1]} is [the upper bound of the supported temperature in Celsius]
  /// * 10.
  /// <li>{@code configArray[2]} is [the increment in Celsius] * 10.
  /// <li>{@code configArray[3]} is
  /// [the lower bound of the supported temperature in Fahrenheit] * 10.
  /// <li>{@code configArray[4]} is
  /// [the upper bound of the supported temperature in Fahrenheit] * 10.
  /// <li>{@code configArray[5]} is [the increment in Fahrenheit] * 10.
  /// </ul>
  ///
  /// For example, if the vehicle supports temperature values as:
  /// <pre>
  /// [16.0, 16.5, 17.0 ,..., 28.0] in Celsius
  /// [60.5, 61.5, 62.5 ,..., 84.5] in Fahrenheit
  /// </pre>
  ///
  /// The {@code configArray} should be:
  /// <pre>
  /// {@code configArray = {160, 280, 5, 605, 845, 10}}
  /// </pre>
  ///
  /// If the {@code configArray} is defined, applications should not use any other method for
  /// converting temperature values besides {@link #HVAC_TEMPERATURE_VALUE_SUGGESTION}, such as the
  /// standard unit conversion formula of {@code F = (9/5) * C + 32}. Any value set that is not
  /// contained within the list of valid values is considered undefined behavior and may result in
  /// inconsistencies in the value set by the application and the value set in the VHAL.
  ///
  /// For converting the temperature from Celsius to Fahrenheit use the following:
  /// <pre>
  /// {@code
  /// // Given tempC and configArray
  /// float minTempC = configArray.get(0) / 10f),
  /// float temperatureIncrementCelsius = configArray.get(2) / 10f),
  /// float minTempF = configArray.get(3) / 10f),
  /// float temperatureIncrementFahrenheit = configArray.get(5) / 10f),
  /// // Round to the closest increment
  /// int numIncrements = Math.round((tempC - minTempC) / temperatureIncrementCelsius)),
  /// float tempF = temperatureIncrementFahrenheit * numIncrements + minTempF),
  /// }
  /// </pre>
  /// For converting the temperature from Fahrenheit to Celsius, use the same method as above
  /// except changing the Celsius values to the relevant Fahrenheit values.
  ///
  /// Othwerise, if neither {@link #HVAC_TEMPERATURE_VALUE_SUGGESTION} nor the {@code
  /// configArray} are defined, the application should use the standard unit conversion formula of
  /// {@code F = (9/5) * C + 32}.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  HVAC_TEMPERATURE_SET(
    358614275,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// Suggested values for setting HVAC temperature.
  ///
  /// Implement the property to help applications understand the closest supported temperature
  /// value in Celsius or Fahrenheit.
  /// <ul>
  /// <li>{@code floatValues[0]} is the requested value that an application wants to set a
  /// temperature to.
  /// <li>{@code floatValues[1]} is the unit for {@code floatValues[0]}. It should be one of
  /// ({@link VehicleUnit#CELSIUS}, {@link VehicleUnit#FAHRENHEIT}).
  /// <li>{@code floatValues[2]} is the value OEMs suggested in CELSIUS. This value is not
  /// included in the request.
  /// <li>{@code floatValues[3]} is the value OEMs suggested in FAHRENHEIT. This value is not
  /// included in the request.
  /// </ul>
  ///
  /// An application calls
  /// {@link android.car.hardware.property.CarPropertyManager#setProperty(Class, int, int, Object)}
  /// with the requested value and unit for the value. OEMs need to return the suggested values
  /// in {@code floatValues[2]} and {@code floatValues[3]} by
  /// {@link android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback}.
  ///
  /// For example, when a user uses the voice assistant to set HVAC temperature to 66.2 in
  /// Fahrenheit.
  ///
  /// First, an application will set this property with the value
  /// [66.2, {@link VehicleUnit#FAHRENHEIT}, 0, 0]. If OEMs suggest to set 19.0 in Celsius
  /// or 66.5 in Fahrenheit for user's request, then car must generate a callback with property
  /// value [66.2, {@link VehicleUnit#FAHRENHEIT}, 19.0, 66.5]. After the voice assistant
  /// gets the callback, it will inform the user and set HVAC temperature to the suggested value.
  ///
  /// Another example, an application receives 21 Celsius as the current temperature value by
  /// querying {@link VehiclePropertyIds#HVAC_TEMPERATURE_SET}. But the application wants to know
  /// what value is displayed on the car's UI in Fahrenheit.
  ///
  /// For this, the application sets the property to
  /// [21, {@link VehicleUnit#CELSIUS}, 0, 0]. If the suggested value by the OEM for 21
  /// Celsius is 70 Fahrenheit, then car must generate a callback with property value
  /// [21, {@link VehicleUnit#CELSIUS}, 21.0, 70.0]. In this case, the application can know
  /// that the value is 70.0 Fahrenheit in the car’s UI.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  HVAC_TEMPERATURE_VALUE_SUGGESTION(
    291570965,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// On/off defrost for designated window.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  HVAC_DEFROSTER(
    320865540,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// On/off AC for designated areaId.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  HVAC_AC_ON(
    354419973,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// On/off max AC.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  HVAC_MAX_AC_ON(
    354419974,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// On/off max defrost.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  HVAC_MAX_DEFROST_ON(
    354419975,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// Recirculation on/off.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  HVAC_RECIRC_ON(
    354419976,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// Enable temperature coupling between areas.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  HVAC_DUAL_ON(
    354419977,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// On/off automatic mode.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  HVAC_AUTO_ON(
    354419978,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// Seat heating/cooling.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  HVAC_SEAT_TEMPERATURE(
    356517131,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// Side Mirror Heat.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  HVAC_SIDE_MIRROR_HEAT(
    339739916,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// Steering Wheel Heating/Cooling.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  HVAC_STEERING_WHEEL_HEAT(
    289408269,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// Temperature units for display.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_READ_DISPLAY_UNITS} or Signature|Privileged
  /// permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to write
  /// property.
  HVAC_TEMPERATURE_DISPLAY_UNITS(
    289408270,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_DISPLAY_UNITS,
      CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE,
    },
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// Actual fan speed.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// property.
  /// Property is not writable.
  HVAC_ACTUAL_FAN_SPEED_RPM(
    356517135,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {},
    [],
  ),

  /// Represents global power state for HVAC.
  ///
  /// Setting this property to false MAY mark some properties that control individual HVAC
  /// features/subsystems to UNAVAILABLE state. Setting this property to true MAY mark some
  /// properties that control individual HVAC features/subsystems to AVAILABLE state (unless
  /// any/all of them are UNAVAILABLE on their own individual merits).
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  HVAC_POWER_ON(
    354419984,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// Fan Positions Available.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// property.
  /// Property is not writable.
  HVAC_FAN_DIRECTION_AVAILABLE(
    356582673,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {},
    [],
  ),

  /// Automatic recirculation on/off.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  HVAC_AUTO_RECIRC_ON(
    354419986,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// Seat ventilation.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  HVAC_SEAT_VENTILATION(
    356517139,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    [],
  ),

  /// ELECTRIC DEFROSTER.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_CLIMATE} to read
  /// and write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  HVAC_ELECTRIC_DEFROSTER_ON(
    320865556,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    {CarPermissions.PERMISSION_CONTROL_CAR_CLIMATE},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Distance units for display.
  ///
  /// Indicates which units the car is using to display distances to the user.
  ///
  /// configArray represents the list of supported units for {@code
  /// DISTANCE_DISPLAY_UNITS}. Here is an example configArray:
  /// <ul>
  /// <li>configArray[0] = {@link VehicleUnit#METER}
  /// <li>configArray[1] = {@link VehicleUnit#KILOMETER}
  /// <li>configArray[2] = {@link VehicleUnit#MILE}
  /// </ul>
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_READ_DISPLAY_UNITS} to read property.
  /// Normal permission {@link Car#PERMISSION_CONTROL_DISPLAY_UNITS} and Signature|Privileged
  /// permission "android.car.permission.CAR_VENDOR_EXTENSION" to write property.
  DISTANCE_DISPLAY_UNITS(
    289408512,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_READ_DISPLAY_UNITS},
    {
      CarPermissions.PERMISSION_CONTROL_DISPLAY_UNITS,
      CarPermissions.PERMISSION_VENDOR_EXTENSION,
    },
    [],
  ),

  /// Fuel volume units for display.
  ///
  /// Indicates which units the car is using to display fuel volume to the user.
  ///
  /// configArray represents the list of supported units for {@code
  /// FUEL_VOLUME_DISPLAY_UNITS}. Here is an example configArray:
  /// <ul>
  /// <li>configArray[0] = {@link VehicleUnit#LITER}
  /// <li>configArray[1] = {@link VehicleUnit#US_GALLON}
  /// </ul>
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_READ_DISPLAY_UNITS} to read property.
  /// Normal permission {@link Car#PERMISSION_CONTROL_DISPLAY_UNITS} and Signature|Privileged
  /// permission "android.car.permission.CAR_VENDOR_EXTENSION" to write property.
  FUEL_VOLUME_DISPLAY_UNITS(
    289408513,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_READ_DISPLAY_UNITS},
    {
      CarPermissions.PERMISSION_CONTROL_DISPLAY_UNITS,
      CarPermissions.PERMISSION_VENDOR_EXTENSION,
    },
    [],
  ),

  /// Tire pressure units for display.
  ///
  /// Indicates which units the car is using to display tire pressure to the user.
  ///
  /// configArray represents the list of supported units for {@code
  /// TIRE_PRESSURE_DISPLAY_UNITS}. Here is an example configArray:
  /// <ul>
  /// <li>configArray[0] = {@link VehicleUnit#KILOPASCAL}
  /// <li>configArray[1] = {@link VehicleUnit#PSI}
  /// <li>configArray[2] = {@link VehicleUnit#BAR}
  /// </ul>
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_READ_DISPLAY_UNITS} to read property.
  /// Normal permission {@link Car#PERMISSION_CONTROL_DISPLAY_UNITS} and Signature|Privileged
  /// permission "android.car.permission.CAR_VENDOR_EXTENSION" to write property.
  TIRE_PRESSURE_DISPLAY_UNITS(
    289408514,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_READ_DISPLAY_UNITS},
    {
      CarPermissions.PERMISSION_CONTROL_DISPLAY_UNITS,
      CarPermissions.PERMISSION_VENDOR_EXTENSION,
    },
    [],
  ),

  /// EV battery units for display.
  ///
  /// Indicates which units the vehicle is using to display EV battery information to the user.
  ///
  /// configArray represents the list of supported units for {@code
  /// EV_BATTERY_DISPLAY_UNITS}. Here is an example configArray:
  /// <ul>
  /// <li>configArray[0] = {@link VehicleUnit#WATT_HOUR}
  /// <li>configArray[1] = {@link VehicleUnit#AMPERE_HOURS}
  /// <li>configArray[2] = {@link VehicleUnit#KILOWATT_HOUR}
  /// </ul>
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_READ_DISPLAY_UNITS} to read property.
  /// Normal permission {@link Car#PERMISSION_CONTROL_DISPLAY_UNITS} and Signature|Privileged
  /// permission "android.car.permission.CAR_VENDOR_EXTENSION" to write property.
  EV_BATTERY_DISPLAY_UNITS(
    289408515,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_READ_DISPLAY_UNITS},
    {
      CarPermissions.PERMISSION_CONTROL_DISPLAY_UNITS,
      CarPermissions.PERMISSION_VENDOR_EXTENSION,
    },
    [],
  ),

  /// Speed units for display.
  ///
  /// Indicates type of units the vehicle is using to display speed to user.
  ///
  /// configArray represents the list of supported units for {@code
  /// VEHICLE_SPEED_DISPLAY_UNITS}. Here is an example configArray:
  /// <ul>
  /// <li>configArray[0] = {@link VehicleUnit#METER_PER_SEC}
  /// <li>configArray[1] = {@link VehicleUnit#MILES_PER_HOUR}
  /// <li>configArray[2] = {@link VehicleUnit#KILOMETERS_PER_HOUR}
  /// </ul>
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_READ_DISPLAY_UNITS} to read property.
  /// Normal permission {@link Car#PERMISSION_CONTROL_DISPLAY_UNITS} and Signature|Privileged
  /// permission "android.car.permission.CAR_VENDOR_EXTENSION" to write property.
  VEHICLE_SPEED_DISPLAY_UNITS(
    289408516,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_READ_DISPLAY_UNITS},
    {
      CarPermissions.PERMISSION_CONTROL_DISPLAY_UNITS,
      CarPermissions.PERMISSION_VENDOR_EXTENSION,
    },
    [],
  ),

  /// Fuel consumption units for display.
  ///
  /// Indicates type of units the car is using to display fuel consumption information to user.
  ///
  /// {@code true} indicates units are distance over volume such as MPG.
  ///
  /// {@code false} indicates units are volume over distance such as L/100KM.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_READ_DISPLAY_UNITS} to read property.
  /// Normal permission {@link Car#PERMISSION_CONTROL_DISPLAY_UNITS} and Signature|Privileged
  /// permission "android.car.permission.CAR_VENDOR_EXTENSION" to write property.
  FUEL_CONSUMPTION_UNITS_DISTANCE_OVER_VOLUME(
    287311364,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_READ_DISPLAY_UNITS},
    {
      CarPermissions.PERMISSION_CONTROL_DISPLAY_UNITS,
      CarPermissions.PERMISSION_VENDOR_EXTENSION,
    },
    [],
  ),

  /// Outside temperature in celsius.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_EXTERIOR_ENVIRONMENT} to read property.
  /// Property is not writable.
  ENV_OUTSIDE_TEMPERATURE(
    291505923,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_EXTERIOR_ENVIRONMENT},
    {},
    [],
  ),

  /// Property to control power state of application processor.
  ///
  /// Not exposed through {@link android.car.hardware.property.CarPropertyManager}.
  ///
  /// This property is not supported.
  ///
  /// @deprecated use {@link android.car.hardware.power.CarPowerManager} instead.
  /// @Deprecated
  /// @RequiresPermission(Car.PERMISSION_CAR_POWER)
  /// /
  AP_POWER_STATE_REQ(
    289475072,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// Property to report power state of application processor.
  ///
  /// Not exposed through {@link android.car.hardware.property.CarPropertyManager}.
  ///
  /// This property is not supported.
  ///
  /// @deprecated use {@link android.car.hardware.power.CarPowerManager} instead.
  /// @Deprecated
  /// @RequiresPermission(Car.PERMISSION_CAR_POWER)
  /// /
  AP_POWER_STATE_REPORT(
    289475073,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// Property to report bootup reason for the current power on.
  ///
  /// Not exposed through {@link android.car.hardware.property.CarPropertyManager}.
  ///
  /// This property is not supported.
  ///
  /// @deprecated use {@link android.car.hardware.power.CarPowerManager} instead.
  /// @Deprecated
  /// @RequiresPermission(Car.PERMISSION_CAR_POWER)
  /// /
  AP_POWER_BOOTUP_REASON(
    289409538,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// Property to represent brightness of the display.
  ///
  /// Not exposed through {@link android.car.hardware.property.CarPropertyManager}.
  ///
  /// This property is not supported.
  ///
  /// @deprecated use {@link android.car.hardware.power.CarPowerManager} instead.
  /// @Deprecated
  /// @RequiresPermission(Car.PERMISSION_CAR_POWER)
  /// /
  DISPLAY_BRIGHTNESS(
    289409539,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// Property to represent brightness of the displays which are controlled separately.
  ///
  /// Not exposed through {@link android.car.hardware.property.CarPropertyManager}.
  ///
  /// This property is not supported.
  ///
  /// @deprecated use {@link android.car.hardware.power.CarPowerManager} instead.
  /// @Deprecated
  /// @RequiresPermission(Car.PERMISSION_CAR_POWER)
  /// /
  PER_DISPLAY_BRIGHTNESS(
    289475076,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// Valet mode enabled
  ///
  /// This property allows the user to enable/disable valet mode in their vehicle. Valet mode is
  /// a privacy and security setting that prevents an untrusted driver to access more private areas
  /// in the vehicle, such as the glove box or the trunk(s).
  ///
  /// This property is defined as read_write, but OEMs have the option to implement it as read
  /// only.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_VALET_MODE} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_VALET_MODE} to read property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_VALET_MODE} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  VALET_MODE_ENABLED(
    287312389,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_VALET_MODE,
      CarPermissions.PERMISSION_CONTROL_VALET_MODE,
    },
    {CarPermissions.PERMISSION_CONTROL_VALET_MODE},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Head up display (HUD) enabled
  ///
  /// This property allows the user to turn on/off the HUD for their seat.
  ///
  /// Each HUD in the vehicle will be assigned to the seat that is intended to use it. For
  /// example, if there is a single HUD in the vehicle that is used by the driver so that they no
  /// longer need to continuously look at the instrument cluster, then this property will be
  /// defined with a single area ID that is equal to the driver's seat area ID.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_HEAD_UP_DISPLAY_STATUS} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_HEAD_UP_DISPLAY} to read
  /// property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_HEAD_UP_DISPLAY} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  HEAD_UP_DISPLAY_ENABLED(
    354421254,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_HEAD_UP_DISPLAY_STATUS,
      CarPermissions.PERMISSION_CONTROL_HEAD_UP_DISPLAY,
    },
    {CarPermissions.PERMISSION_CONTROL_HEAD_UP_DISPLAY},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Property to feed H/W input events to android.
  ///
  /// Not exposed through {@link android.car.hardware.property.CarPropertyManager}.
  ///
  /// This property is not supported.
  ///
  /// @deprecated car service internal use only.
  /// @Deprecated
  /// /
  HW_KEY_INPUT(
    289475088,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// Door position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the door's
  /// position when closed. This value will be 0
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the door's
  /// position when fully open.
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the closed and fully open positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_DOORS} to read and
  /// write property.
  DOOR_POS(
    373295872,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_DOORS},
    {CarPermissions.PERMISSION_CONTROL_CAR_DOORS},
    [],
  ),

  /// Door move.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values mean the door is opening and negative values mean the door is closing.
  /// Larger integers, either positive or negative, indicate a faster speed. Once the door reaches
  /// the positional limit, the value resets to 0. When this property's value is 0, that means
  /// there is no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_DOORS} to read and
  /// write property.
  DOOR_MOVE(
    373295873,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_DOORS},
    {CarPermissions.PERMISSION_CONTROL_CAR_DOORS},
    [],
  ),

  /// Door lock.
  ///
  /// True indicates that the door is locked.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_DOORS} to read and
  /// write property.
  DOOR_LOCK(
    371198722,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_DOORS},
    {CarPermissions.PERMISSION_CONTROL_CAR_DOORS},
    [],
  ),

  /// Door child lock feature enabled.
  ///
  /// Returns true if the door child lock feature is enabled and false if it is disabled.
  /// If enabled, the door is unable to be opened from the inside.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_DOORS} to read
  /// and write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  DOOR_CHILD_LOCK_ENABLED(
    371198723,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_DOORS},
    {CarPermissions.PERMISSION_CONTROL_CAR_DOORS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Mirror Z Position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the mirror's
  /// position when tilted completely downwards.
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the mirror's
  /// position when tilted completely upwards.
  /// 0 indicates the mirror is not tilted in either direction.
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the completely downwards and completely upwards positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_MIRRORS} to read and
  /// write property.
  MIRROR_Z_POS(
    339741504,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_MIRRORS},
    {CarPermissions.PERMISSION_CONTROL_CAR_MIRRORS},
    [],
  ),

  /// Mirror Z Move.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values mean the mirror is tilting up and negative values mean the mirror is
  /// tilting down. Larger integers, either positive or negative, indicate a faster speed. Once the
  /// mirror reaches the positional limit, the value resets to 0. When this property's value is 0,
  /// that means there is no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_MIRRORS} to read and
  /// write property.
  MIRROR_Z_MOVE(
    339741505,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_MIRRORS},
    {CarPermissions.PERMISSION_CONTROL_CAR_MIRRORS},
    [],
  ),

  /// Mirror Y Position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the mirror's
  /// position when tilted completely to the left.
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the mirror's
  /// position when tilted completely to the right.
  /// 0 indicates the mirror is not tilted in either direction.
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the extreme left and extreme right positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_MIRRORS} to read and
  /// write property.
  MIRROR_Y_POS(
    339741506,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_MIRRORS},
    {CarPermissions.PERMISSION_CONTROL_CAR_MIRRORS},
    [],
  ),

  /// Mirror Y Move.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values mean the mirror is tilting to the right and negative values mean the
  /// support is tilting to the left. Larger integers, either positive or negative, indicate a
  /// faster speed. Once the mirror reaches the positional limit, the value resets to 0. When this
  /// property's value is 0, that means there is no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_MIRRORS} to read and
  /// write property.
  MIRROR_Y_MOVE(
    339741507,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_MIRRORS},
    {CarPermissions.PERMISSION_CONTROL_CAR_MIRRORS},
    [],
  ),

  /// Mirror Lock.
  ///
  /// True indicates all mirror positions are locked and not changeable.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_MIRRORS} to read and
  /// write property.
  MIRROR_LOCK(
    287312708,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_MIRRORS},
    {CarPermissions.PERMISSION_CONTROL_CAR_MIRRORS},
    [],
  ),

  /// Mirror Fold.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_MIRRORS} to read and
  /// write property.
  MIRROR_FOLD(
    287312709,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_MIRRORS},
    {CarPermissions.PERMISSION_CONTROL_CAR_MIRRORS},
    [],
  ),

  /// Represents property for the Mirror Auto Fold feature.
  ///
  /// This property is true when the feature for automatically folding the vehicle's mirrors
  /// (for example, when the mirrors fold inward automatically when one exits and locks the
  /// vehicle) is enabled.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_MIRRORS} to read and
  /// write property.
  /// @FlaggedApi(FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS)
  /// @RequiresPermission(Car.PERMISSION_CONTROL_CAR_MIRRORS)
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  MIRROR_AUTO_FOLD_ENABLED(
    337644358,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_MIRRORS},
    {CarPermissions.PERMISSION_CONTROL_CAR_MIRRORS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Represents property for the Mirror Auto Tilt feature.
  ///
  /// This property is true when the feature for automatically tilting the vehicle's mirrors
  /// (for example, when the mirrors tilt downward automatically when one reverses the vehicle) is
  /// enabled.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_MIRRORS} to read and
  /// write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  MIRROR_AUTO_TILT_ENABLED(
    337644359,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_MIRRORS},
    {CarPermissions.PERMISSION_CONTROL_CAR_MIRRORS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Property that represents the current position of the glove box door.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the glove box's
  /// position when closed. This value will be 0.
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the glove box's
  /// position when fully open.
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the closed and fully open positions.
  ///
  /// The supported area IDs match the seat(s) by which the glove box is intended to be used
  /// (e.g.) if the front right dashboard has a glove box embedded in it, then the area ID should
  /// be {@link VehicleAreaSeat#SEAT_ROW_1_RIGHT}).
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_GLOVE_BOX} to read and
  /// write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  GLOVE_BOX_DOOR_POS(
    356518896,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_GLOVE_BOX},
    {CarPermissions.PERMISSION_CONTROL_GLOVE_BOX},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Lock or unlock the glove box.
  ///
  /// If {@code true}, the glove box is locked. If {@code false}, the glove box is unlocked.
  ///
  /// The supported area IDs match the seat(s) by which the glove box is intended to be used
  /// (e.g. if the front right dashboard has a glove box embedded in it, then the area ID will be
  /// {@link android.car.VehicleAreaSeat#SEAT_ROW_1_RIGHT}).
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_GLOVE_BOX} to read and
  /// write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  GLOVE_BOX_LOCKED(
    354421745,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_GLOVE_BOX},
    {CarPermissions.PERMISSION_CONTROL_GLOVE_BOX},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Seat memory select.
  ///
  /// This parameter selects the memory preset to use to select the seat position. The {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} is always 0, and the {@link
  /// android.car.hardware.property.AreaIdConfig#getMaxValue()} determines the number of seat
  /// positions available (i.e. numSeatPresets - 1).
  ///
  /// # Permissions
  /// Property is not readable.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to write
  /// property.
  SEAT_MEMORY_SELECT(
    356518784,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.privileged,
    {},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Seat memory set.
  ///
  /// This setting allows the user to save the current seat position settings into the selected
  /// preset slot. The {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} for each
  /// seat position must match the {@link android.car.hardware.property.AreaIdConfig#getMaxValue()}
  /// for {@link #SEAT_MEMORY_SELECT}.
  ///
  /// # Permissions
  /// Property is not readable.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to write
  /// property.
  SEAT_MEMORY_SET(
    356518785,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.privileged,
    {},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Seatbelt buckled.
  ///
  /// True indicates belt is buckled.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_BELT_BUCKLED(
    354421634,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Seatbelt height position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the seat belt
  /// shoulder anchor's lowest position.
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the seat belt
  /// shoulder anchor's highest position.
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the lowest and highest positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_BELT_HEIGHT_POS(
    356518787,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Seatbelt height move.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values mean the seat belt's shoulder anchor is moving up and negative values mean
  /// the seat belt's shoulder anchor is moving down. Larger integers, either positive or negative,
  /// indicate a faster speed. Once the seat belt's shoulder anchor reaches the positional limit,
  /// the value resets to 0. When this property's value is 0, that means there is no movement
  /// currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_BELT_HEIGHT_MOVE(
    356518788,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Seat fore/aft position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the seat's
  /// rearward-most linear position.
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the seat's
  /// forward-most linear position.
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the forward most and rearward most positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_FORE_AFT_POS(
    356518789,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Seat fore/aft move.
  ///
  /// This property moves the entire seat forward/backward in the direction it's facing.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values mean the seat is moving forward and negative values mean the seat is
  /// moving backward. Larger integers, either positive or negative, indicate a faster speed. Once
  /// the seat reaches the positional limit, the value resets to 0. When this property's value is
  /// 0, that means there is no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_FORE_AFT_MOVE(
    356518790,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Seat backrest angle 1 position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the seat
  /// backrest's full recline position w.r.t the actuator at the bottom of the seat (see {@link
  /// #SEAT_BACKREST_ANGLE_1_MOVE} for additional details).
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the seat
  /// backrest's most upright/forward position w.r.t the actuator at the bottom of the seat (see
  /// {@link #SEAT_BACKREST_ANGLE_1_MOVE} for additional details).
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the forward most and rearward most positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_BACKREST_ANGLE_1_POS(
    356518791,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Seat backrest angle 1 move.
  ///
  /// This property moves the seat backrest along the axis of rotation defined by the actuator
  /// closest to the bottom of the seat. This is the actuator that moves the seat upright/forward
  /// or into recline as seen in most conventional vehicles.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values mean the seat is angling forward and negative values mean the seat is
  /// reclining backward. Larger integers, either positive or negative, indicate a faster speed.
  /// Once the seat reaches the positional limit, the value resets to 0. When this property's value
  /// is 0, that means there is no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_BACKREST_ANGLE_1_MOVE(
    356518792,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Seat backrest angle 2 position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the seat
  /// backrest's full recline position w.r.t the next actuator in the backrest from the one at the
  /// bottom of the seat (see {@link #SEAT_BACKREST_ANGLE_2_MOVE} for more details).
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the seat
  /// backrest's most upright/forward position w.r.t the next actuator in the backrest from the one
  /// at the bottom of the seat (see {@link #SEAT_BACKREST_ANGLE_2_MOVE} for more details).
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the forward most and rearward most positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_BACKREST_ANGLE_2_POS(
    356518793,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Seat backrest angle 2 move.
  ///
  /// This property will be implemented if there exists an additional actuator in the seat
  /// backrest besides the one at the very bottom of the backrest, which is covered by {@link
  /// #SEAT_BACKREST_ANGLE_1_MOVE}. This property will move the backrest along the axis of rotation
  /// defined by this additional actuator. It can be assumed that this actuator is closer to the
  /// headrest than the one defined by {@link #SEAT_BACKREST_ANGLE_1_MOVE}.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values mean the seat is angling forward and negative values mean the seat is
  /// reclining backward. Larger integers, either positive or negative, indicate a faster speed.
  /// Once the seat reaches the positional limit, the value resets to 0. When this property's value
  /// is 0, that means there is no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_BACKREST_ANGLE_2_MOVE(
    356518794,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Seat height position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the seat's
  /// lowest position.
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the seat's
  /// highest position.
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the lowest and highest positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_HEIGHT_POS(
    356518795,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Seat height move.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values mean the seat is moving up and negative values mean the seat is moving
  /// down. Larger integers, either positive or negative, indicate a faster speed. Once the seat
  /// reaches the positional limit, the value resets to 0. When this property's value is 0, that
  /// means there is no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_HEIGHT_MOVE(
    356518796,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Seat depth position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the seat's
  /// shallowest position. This corresponds to the smallest distance between the front edge of the
  /// seat and the seat backrest.
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the seat's
  /// deepest position. This corresponds to the largest distance between the front edge of the seat
  /// and the seat backrest.
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the shallowest and deepest positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_DEPTH_POS(
    356518797,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Seat depth move.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values mean the distance between the seat's front edge and the back of the seat
  /// is increasing, thus making the seat deeper. Negative values mean the distance between the
  /// seat's front edge and the back of the seat is decreasing, thus making the seat shallower.
  /// Larger integers, either positive or negative, indicate a faster speed. Once the seat depth
  /// reaches its limit, the value resets to 0. When this property's value is 0, that means there
  /// is no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_DEPTH_MOVE(
    356518798,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Seat tilt position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the seat
  /// bottom's lowest angular position. This corresponds to the seat's front edge at its lowest
  /// possible position relative to the rear end of the seat.
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the seat
  /// bottom's highest angular position. This corresponds to the seat's front edge at its highest
  /// possible position relative to the rear end of the seat.
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the lowest and highest positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_TILT_POS(
    356518799,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Seat tilt move.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values mean the seat cushion is tilting upward such that the seat cushion's front
  /// edge is higher than the rear end of the seat cushion. Negative values mean the seat cushion
  /// is tilting downward such that the seat cushion's front edge is lower than the rear end of the
  /// seat cushion. Larger integers, either positive or negative, indicate a faster speed. Once the
  /// seat cushion reaches the positional limit, the value resets to 0. When this property's value
  /// is 0, that means there is no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_TILT_MOVE(
    356518800,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Lumber fore/aft position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the seat lumbar
  /// support's rearward most position (i.e. least supportive position).
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the seat lumbar
  /// support's forward most position (i.e. most supportive position).
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the forward most and rearward most positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_LUMBAR_FORE_AFT_POS(
    356518801,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Lumbar fore/aft move.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values mean the lumbar support is moving forward towards the front of the seat
  /// and negative values mean the lumbar support is moving backward away from the front of the
  /// seat. Larger integers, either positive or negative, indicate a faster speed. Once the lumbar
  /// support reaches the positional limit, the value resets to 0. When this property's value is 0,
  /// that means there is no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_LUMBAR_FORE_AFT_MOVE(
    356518802,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Lumbar side support position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the seat lumbar
  /// side support's thinnest position (i.e most support).
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the seat lumbar
  /// side support's widest position (i.e least support).
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the thinnest and widest positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_LUMBAR_SIDE_SUPPORT_POS(
    356518803,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Lumbar side support move.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values mean the lumbar side support is getting wider (i.e. less support) and
  /// negative values mean the lumbar side support is getting thinner (i.e. more support). Larger
  /// integers, either positive or negative, indicate a faster speed. Once the lumbar side support
  /// reaches the positional limit, the value resets to 0. When this property's value is 0, that
  /// means there is no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  SEAT_LUMBAR_SIDE_SUPPORT_MOVE(
    356518804,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Headrest height position.
  ///
  /// Not exposed through {@link android.car.hardware.property.CarPropertyManager}.
  ///
  /// This property is not supported.
  ///
  /// @deprecated because it is defined as type {@link VehicleAreaType#VEHICLE_AREA_TYPE_GLOBAL},
  /// which means all seats use the same value. Use {@link #SEAT_HEADREST_HEIGHT_POS_V2} instead
  /// which fixes this issue by being defined as type
  /// {@link VehicleAreaType#VEHICLE_AREA_TYPE_SEAT}.
  /// @Deprecated
  /// @RequiresPermission(Car.PERMISSION_CONTROL_CAR_SEATS)
  /// /
  SEAT_HEADREST_HEIGHT_POS(
    289409941,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// Headrest height position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// The {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the seat
  /// headrest's shortest position.
  /// The {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the seat
  /// headrest's tallest position.
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the shortest and tallest positions.
  ///
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIds()} specifies which seats are
  /// supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read
  /// and write property.
  SEAT_HEADREST_HEIGHT_POS_V2(
    356518820,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Headrest height move.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values mean the headrest is moving up and negative values mean the headrest is
  /// moving down. Larger integers, either positive or negative, indicate a faster speed. Once the
  /// headrest reaches the positional limit, the value resets to 0. When this property's value is
  /// 0, that means there is no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read
  /// and write property.
  SEAT_HEADREST_HEIGHT_MOVE(
    356518806,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Headrest angle position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// The {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the seat
  /// headrest's full recline position.
  /// The {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the seat
  /// headrest's most upright/forward position.
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the forward most and rearward most positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read
  /// and write property.
  SEAT_HEADREST_ANGLE_POS(
    356518807,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Headrest angle move.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values mean the headrest is moving upright/forward and negative values mean the
  /// headrest is reclining. Larger integers, either positive or negative, indicate a faster speed.
  /// Once the headrest reaches the positional limit, the value resets to 0. When this property's
  /// value is 0, that means there is no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read
  /// and write property.
  SEAT_HEADREST_ANGLE_MOVE(
    356518808,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Headrest fore/aft position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// The {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the seat
  /// headrest's rearward-most linear position.
  /// The {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the seat
  /// headrest's forward-most linear position.
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the forward most and rearward most positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read
  /// and write property.
  SEAT_HEADREST_FORE_AFT_POS(
    356518809,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Headrest fore/aft move.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values mean the headrest is moving forward towards the front of the seat and
  /// negative values mean the headrest is moving backward away from the front of the seat. Larger
  /// integers, either positive or negative, indicate a faster speed. Once the headrest reaches the
  /// positional limit, the value resets to 0. When this property's value is 0, that means there is
  /// no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read
  /// and write property.
  SEAT_HEADREST_FORE_AFT_MOVE(
    356518810,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    [],
  ),

  /// Represents property for state of the footwell lights.
  ///
  /// {@code SEAT_FOOTWELL_LIGHTS_STATE} reflects the current state of the lights at any point
  /// in time. This is different from the function of {@link #SEAT_FOOTWELL_LIGHTS_SWITCH} which
  /// represents the position of the switch controlling the lights. Therefore, {@code
  /// SEAT_FOOTWELL_LIGHTS_STATE} may not match the value of {@link #SEAT_FOOTWELL_LIGHTS_SWITCH}
  /// (e.g. {@link #SEAT_FOOTWELL_LIGHTS_SWITCH}={@code VehicleLightSwitch#STATE_AUTOMATIC} and
  /// {@code SEAT_FOOTWELL_LIGHTS_STATE}={@code VehicleLightState#STATE_ON}).
  ///
  /// This property will only be implemented if {@code SEAT_FOOTWELL_LIGHTS_STATE}'s value may
  /// be different from that of {@link #CABIN_LIGHTS_STATE}.
  ///
  /// For each supported area ID, the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} obtained from {@link
  /// android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which enum values from
  /// {@code VehicleLightState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_INTERIOR_LIGHTS} to
  /// read property.
  /// Property is not writable.
  SEAT_FOOTWELL_LIGHTS_STATE(
    356518811,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_INTERIOR_LIGHTS},
    {},
    [],
  ),

  /// Represents property for switch of the footwell lights.
  ///
  /// {@code SEAT_FOOTWELL_LIGHTS_SWITCH} represents the position of the switch controlling the
  /// lights. This is different from the function of {@link #SEAT_FOOTWELL_LIGHTS_STATE} which
  /// reflects the current state of the lights at any point in time. Therefore, {@code
  /// SEAT_FOOTWELL_LIGHTS_SWITCH} may not match the value of {@link #SEAT_FOOTWELL_LIGHTS_STATE}
  /// (e.g. {@code SEAT_FOOTWELL_LIGHTS_SWITCH}={@code VehicleLightSwitch#STATE_AUTOMATIC} and
  /// {@link #SEAT_FOOTWELL_LIGHTS_STATE}={@code VehicleLightState#STATE_ON}).
  ///
  /// This property will only be implemented if {@code SEAT_FOOTWELL_LIGHTS_SWITCH}'s value may
  /// be different from that of {@link #CABIN_LIGHTS_SWITCH}.
  ///
  /// For each supported area ID, the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} obtained from {@link
  /// android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which enum values from
  /// {@code VehicleLightSwitch} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_INTERIOR_LIGHTS} to
  /// read and write property.
  SEAT_FOOTWELL_LIGHTS_SWITCH(
    356518812,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_INTERIOR_LIGHTS},
    {CarPermissions.PERMISSION_CONTROL_INTERIOR_LIGHTS},
    [],
  ),

  /// Represents property for Seat easy access feature.
  ///
  /// If true, the seat will automatically adjust to make it easier for the occupant to enter
  /// and exit the vehicle. Each area ID maps to the seat that the user is trying to enter/exit
  /// with the help of the easy access feature.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  SEAT_EASY_ACCESS_ENABLED(
    354421661,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Represents feature to enable/disable a seat's ability to deploy airbag(s) when triggered
  /// (e.g. by a crash).
  ///
  /// If true, it means the seat's airbags are enabled, and if triggered (e.g. by a crash), they
  /// will deploy. If false, it means the seat's airbags are disabled, and they will not deploy
  /// under any circumstance. This property does not indicate if the airbags are deployed or not.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_AIRBAGS} to read and
  /// write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  SEAT_AIRBAG_ENABLED(
    354421662,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_AIRBAGS},
    {CarPermissions.PERMISSION_CONTROL_CAR_AIRBAGS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// State of deployment for seat airbags.
  ///
  /// Bit flag property to relay information on which airbags have been deployed in the vehicle
  /// at each seat, vs which ones are currently still armed. When SEAT_AIRBAG_ENABLED is set to
  /// false at a particular areaId, this property will be UNAVAILABLE at that areaId.
  ///
  /// Enums apply to each seat, not the global vehicle. For example,
  /// {@link android.car.hardware.property.VehicleAirbagLocation#CURTAIN} at the driver seat areaId
  /// represents whether the driver side curtain airbag has been deployed. Multiple bit flags can
  /// be set to indicate that multiple different airbags have been deployed for the seat.
  ///
  /// For each seat area ID, the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.VehicleAirbagLocation} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_CAR_AIRBAGS} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  SEAT_AIRBAGS_DEPLOYED(
    356518821,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_CAR_AIRBAGS},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Represents property for seat’s hipside (bottom cushion’s side) support position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// The {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the seat
  /// hipside support's thinnest position (i.e. most support).
  /// The {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the seat
  /// hipside support's widest position (i.e. least support).
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the thinnest and widest positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  SEAT_CUSHION_SIDE_SUPPORT_POS(
    356518815,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Represents property for movement direction and speed of seat cushion side support.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values means the seat cushion side support is growing wider (i.e. less support)
  /// and negative values means the seat cushion side support is growing thinner (i.e. more
  /// support). Larger integers, either positive or negative, indicate a faster speed. Once the
  /// seat cushion side support reaches the positional limit, the value resets to 0. When this
  /// property's value is 0, that means there is no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  SEAT_CUSHION_SIDE_SUPPORT_MOVE(
    356518816,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Represents property for seat’s lumbar support vertical position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// The {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the seat
  /// lumbar support's lowest position.
  /// The {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the seat
  /// lumbar support's highest position.
  ///
  /// All integers between the min and max values are supported and indicate a transition state
  /// between the lowest and highest positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  SEAT_LUMBAR_VERTICAL_POS(
    356518817,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Represents property for vertical movement direction and speed of seat lumbar support.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values mean the lumbar support is moving up and negative values mean the lumbar
  /// support is moving down. Larger integers, either positive or negative, indicate a faster
  /// speed. Once the lumbar support reaches the positional limit, the value resets to 0. When this
  /// property's value is 0, that means there is no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  SEAT_LUMBAR_VERTICAL_MOVE(
    356518818,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Represents property that indicates the current walk-in position of the seat.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the normal seat
  /// position.
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the seat's
  /// position in full walk-in mode.
  ///
  /// All integers in between the min and max values are supported and indicate a transition
  /// state between the normal and walk-in positions. The area IDs match the seats that actually
  /// move when the walk-in feature activates.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read and
  /// write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  SEAT_WALK_IN_POS(
    356518819,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    {CarPermissions.PERMISSION_CONTROL_CAR_SEATS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Seat belt pretensioner deployed.
  ///
  /// Property to relay information on whether the seat belt pretensioner has been deployed for
  /// a particular seat due to a collision. This is different from the regular seat belt tightening
  /// system that continuously adds tension to the seat belts so that they fit snugly around the
  /// person sitting in the seat, nor is it the seat belt retractor system that locks the seat belt
  /// in place during sudden brakes or when the user jerks the seat belt.
  ///
  /// If this property is dependant on the state of other properties, and if those properties
  /// are currently in the state that doesn't support this property, reading this property will
  /// throw {@link android.car.hardware.property.PropertyNotAvailableException}.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_CAR_SEAT_BELTS} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  SEAT_BELT_PRETENSIONER_DEPLOYED(
    354421670,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_CAR_SEAT_BELTS},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Seat Occupancy.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_READ_CAR_SEATS} or Signature|Privileged
  /// permission {@link Car#PERMISSION_CONTROL_CAR_SEATS} to read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_25Q2_3P_PERMISSIONS
  SEAT_OCCUPANCY(
    356518832,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {
      CarPermissions.PERMISSION_READ_CAR_SEATS,
      CarPermissions.PERMISSION_CONTROL_CAR_SEATS,
    },
    {},
    ['FLAG_VEHICLE_PROPERTY_25Q2_3P_PERMISSIONS'],
  ),

  /// Window Position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the window's
  /// position when closed/fully open out of plane. If the window cannot open out of plane, then
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} is the position of the
  /// window when fully closed and must be 0. If the window can open out of plane, {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the window is fully open
  /// in its position out of plane and will be a negative value.
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the window's
  /// position when fully open.
  ///
  /// All integers in between the min and max values are supported and indicate a transition
  /// state between the closed and fully open positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_WINDOWS} to read and
  /// write property.
  WINDOW_POS(
    322964416,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_WINDOWS},
    {CarPermissions.PERMISSION_CONTROL_CAR_WINDOWS},
    [],
  ),

  /// Window Move.
  ///
  /// This property is not in any particular unit but in a specified range of relative movement
  /// speeds.
  ///
  /// Positive values mean the window is either closing from its out of plane position (if such
  /// a position is supported by the window), or is opening in plane. Negative values mean the
  /// window is closing in plane, or opening in its out of plane position (if the position is
  /// supported). Larger integers, either positive or negative, indicate a faster speed. Once the
  /// window reaches the positional limit, the value resets to 0. When this property's value is 0,
  /// that means there is no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_WINDOWS} to read and
  /// write property.
  WINDOW_MOVE(
    322964417,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_WINDOWS},
    {CarPermissions.PERMISSION_CONTROL_CAR_WINDOWS},
    [],
  ),

  /// Window Child Lock.
  ///
  /// True indicates that the window is child-locked.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_WINDOWS} to read and
  /// write property.
  WINDOW_LOCK(
    320867268,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_CAR_WINDOWS},
    {CarPermissions.PERMISSION_CONTROL_CAR_WINDOWS},
    [],
  ),

  /// Windshield wipers period (milliseconds).
  ///
  /// Returns the instantaneous time period for 1 full cycle of the windshield wipers in {@link
  /// android.car.VehicleUnit#MILLI_SECS}. A full cycle is defined as a wiper moving from and
  /// returning to its rest position. The {@link
  /// android.car.hardware.property.AreaIdConfig#getMaxValue()} specifies the longest wiper period.
  /// The {@link android.car.hardware.property.AreaIdConfig#getMinValue()} is always 0. When an
  /// intermittent wiper setting is selected, this property value will be set to 0 during the
  /// "pause" phase of the intermittent wiping.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_WINDSHIELD_WIPERS} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  WINDSHIELD_WIPERS_PERIOD(
    322964421,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_WINDSHIELD_WIPERS},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Windshield wipers state.
  ///
  /// Returns the current state of the windshield wipers. The value of {@code
  /// WINDSHIELD_WIPERS_STATE} may not match the value of {@link #WINDSHIELD_WIPERS_SWITCH}. (e.g.
  /// {@code #WINDSHIELD_WIPERS_STATE} = {@link
  /// android.car.hardware.property.WindshieldWipersState#ON} and {@link
  /// #WINDSHIELD_WIPERS_SWITCH} = {@link
  /// android.car.hardware.property.WindshieldWipersSwitch#AUTO}).
  ///
  /// If {@code #WINDSHIELD_WIPERS_STATE} = {@link
  /// android.car.hardware.property.WindshieldWipersState#ON} and {@link #WINDSHIELD_WIPERS_PERIOD}
  /// is implemented, then {@link #WINDSHIELD_WIPERS_PERIOD} will reflect the time period of 1
  /// full cycle of the wipers.
  ///
  /// For each supported area ID, the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.WindshieldWipersState} are supported.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_READ_WINDSHIELD_WIPERS_3P} or
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_WINDSHIELD_WIPERS} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_25Q2_3P_PERMISSIONS
  WINDSHIELD_WIPERS_STATE(
    322964422,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {
      CarPermissions.PERMISSION_READ_WINDSHIELD_WIPERS_3P,
      CarPermissions.PERMISSION_READ_WINDSHIELD_WIPERS,
    },
    {},
    ['FLAG_VEHICLE_PROPERTY_25Q2_3P_PERMISSIONS'],
  ),

  /// Windshield wipers switch.
  ///
  /// Represents the position of the switch controlling the windshield wipers. The value of
  /// {@code WINDSHIELD_WIPERS_SWITCH} may not match the value of {@link #WINDSHIELD_WIPERS_STATE}
  /// (e.g. {@code WINDSHIELD_WIPERS_SWITCH} = {@link
  /// android.car.hardware.property.WindshieldWipersSwitch#AUTO} and {@link
  /// #WINDSHIELD_WIPERS_STATE} = WindshieldWipersState#ON).
  ///
  /// For each supported area ID, the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which values
  /// from {@link android.car.hardware.property.WindshieldWipersSwitch} are supported.
  ///
  /// This property is defined as read_write, but OEMs have the option to implement it as read
  /// only.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_WINDSHIELD_WIPERS} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_WINDSHIELD_WIPERS} to read
  /// property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_WINDSHIELD_WIPERS} to
  /// write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  WINDSHIELD_WIPERS_SWITCH(
    322964423,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_WINDSHIELD_WIPERS,
      CarPermissions.PERMISSION_CONTROL_WINDSHIELD_WIPERS,
    },
    {CarPermissions.PERMISSION_CONTROL_WINDSHIELD_WIPERS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Steering wheel depth position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the steering
  /// wheel's position when closest to the driver.
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the steering
  /// wheel's position when farthest from the driver.
  ///
  /// All integers in between the min and max values are supported and indicate a transition
  /// state between the closest and farthest positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_STEERING_WHEEL} to read
  /// and write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  STEERING_WHEEL_DEPTH_POS(
    289410016,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_STEERING_WHEEL},
    {CarPermissions.PERMISSION_CONTROL_STEERING_WHEEL},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Steering wheel depth movement.
  ///
  /// Returns the speed and direction, either towards or away from the driver, that the
  /// steering wheel is moving in. This property is not in any particular unit but in a specified
  /// range of relative movement speeds.
  ///
  /// Positive values mean the steering wheel is moving away from the driver and negative values
  /// mean the steering wheel is moving towards the driver. Larger integers, either positive or
  /// negative, indicate a faster speed. Once the steering wheel reaches the positional limit, the
  /// value resets to 0. When this property's value is 0, that means there is no movement currently
  /// occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_STEERING_WHEEL} to read
  /// and write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  STEERING_WHEEL_DEPTH_MOVE(
    289410017,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_STEERING_WHEEL},
    {CarPermissions.PERMISSION_CONTROL_STEERING_WHEEL},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Steering wheel height position.
  ///
  /// This property is not in any particular unit but in a specified range of relative
  /// positions.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} indicates the steering
  /// wheel's lowest position.
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} indicates the steering
  /// wheel's highest position.
  ///
  /// All integers in between the min and max values are supported and indicate a transition
  /// state between the lowest and highest positions.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_STEERING_WHEEL} to read
  /// and write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  STEERING_WHEEL_HEIGHT_POS(
    289410018,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_STEERING_WHEEL},
    {CarPermissions.PERMISSION_CONTROL_STEERING_WHEEL},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Steering wheel height movement.
  ///
  /// Returns the speed and direction, either upwards or downwards, that the steering wheel is
  /// moving in. This property is not in any particular unit but in a specified range of relative
  /// movement speeds.
  ///
  /// Positive values mean moving upwards and negative values mean moving downwards. Larger
  /// integers, either positive or negative, indicate a faster speed. Once the steering wheel
  /// reaches the positional limit, the value resets to 0. When this property's value is 0, that
  /// means there is no movement currently occurring.
  ///
  /// See {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMinValue()} for the range of possible speeds.
  /// All integers between min and max value are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_STEERING_WHEEL} to read
  /// and write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  STEERING_WHEEL_HEIGHT_MOVE(
    289410019,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_STEERING_WHEEL},
    {CarPermissions.PERMISSION_CONTROL_STEERING_WHEEL},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Steering wheel theft lock feature enabled.
  ///
  /// Returns true if the steering wheel theft lock feature is enabled and false if it is
  /// disabled. If enabled, the steering wheel will lock automatically to prevent theft in
  /// certain situations.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_STEERING_WHEEL} to read
  /// and write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  STEERING_WHEEL_THEFT_LOCK_ENABLED(
    287312868,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_STEERING_WHEEL},
    {CarPermissions.PERMISSION_CONTROL_STEERING_WHEEL},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Steering wheel locked.
  ///
  /// Returns true if the steering wheel is locked. If locked, the steering wheel’s position is
  /// not changeable.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_STEERING_WHEEL} to read
  /// and write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  STEERING_WHEEL_LOCKED(
    287312869,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_STEERING_WHEEL},
    {CarPermissions.PERMISSION_CONTROL_STEERING_WHEEL},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Steering wheel easy access feature enabled.
  ///
  /// Returns true if the steering wheel easy access feature is enabled and false if it is
  /// disabled. If enabled, the driver’s steering wheel will automatically adjust to make it easier
  /// for the driver to enter and exit the vehicle.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_STEERING_WHEEL} to read
  /// and write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  STEERING_WHEEL_EASY_ACCESS_ENABLED(
    287312870,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_STEERING_WHEEL},
    {CarPermissions.PERMISSION_CONTROL_STEERING_WHEEL},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Vehicle Maps Service (VMS) message.
  ///
  /// Not exposed through {@link android.car.hardware.property.CarPropertyManager}.
  ///
  /// This property is not supported.
  ///
  /// @deprecated use {@link android.car.vms.VmsClientManager} instead.
  /// @Deprecated
  /// @RequiresPermission(anyOf = {Car.PERMISSION_VMS_PUBLISHER, Car.PERMISSION_VMS_SUBSCRIBER})
  /// /
  VEHICLE_MAP_SERVICE(
    299895808,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// Characterization of inputs used for computing location.
  ///
  /// This property indicates what (if any) data and sensor inputs are considered by the system
  /// when computing the vehicle's location that is shared with Android through {@link
  /// android.location.LocationManager#GPS_PROVIDER}.
  ///
  /// The value returned is a collection of bit flags. The bit flags are defined in {@link
  /// LocationCharacterization}. The value will also include exactly
  /// one of {@link LocationCharacterization#DEAD_RECKONED} or {@link
  /// LocationCharacterization#RAW_GNSS_ONLY} among its collection of
  /// bit flags.
  ///
  /// When this property is not supported, it is assumed that no additional sensor inputs are
  /// fused into the GNSS updates provided through {@link
  /// android.location.LocationManager#GPS_PROVIDER}. That is unless otherwise specified through
  /// other {@link android.location.LocationManager} APIs.
  ///
  /// # Permissions
  /// Dangerous permission {@link android.Manifest.permission#ACCESS_FINE_LOCATION} to read
  /// property.
  /// Property is not writable.
  LOCATION_CHARACTERIZATION(
    289410064,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// Static data for the position of each ultrasonic sensor installed on the vehicle.
  ///
  /// Each individual sensor is identified by its unique {@link AreaIdConfig#getAreaId()} and
  /// returns the sensor's position formatated as [x, y, z] where:
  ///
  /// <ul>
  /// <li>x is the position of the sensor along the x-axis relative to the origin of the Android
  /// Automotive sensor coordinate frame in millimeters.
  /// <li>y is the position of the sensor along the y-axis relative to the origin of the Android
  /// Automotive sensor coordinate frame in millimeters.
  /// <li>z is the position of the sensor along the z-axis relative to the origin of the Android
  /// Automotive sensor coordinate frame in millimeters.
  /// </ul>
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ULTRASONICS_SENSOR_DATA} to
  /// read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  ULTRASONICS_SENSOR_POSITION(
    406916128,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ULTRASONICS_SENSOR_DATA},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Static data for the orientation of each ultrasonic sensor installed on the vehicle.
  ///
  /// Each individual sensor is identified by its {@link AreaIdConfig#getAreaId()} and returns
  /// the sensor's orientation formatted as [qw, qx, qy, qz] where:
  ///
  /// <ul>
  /// <li>qw is the quaternion coefficient w within the quaterinion (w + xi + yj + zk) describing
  /// the rotation of the sensor relative to the Android Automotive sensor coordinate frame.
  /// <li>qx is the quaternion coefficient x within the quaterinion (w + xi + yj + zk) describing
  /// the rotation of the sensor relative to the Android Automotive sensor coordinate frame.
  /// <li>qy is the quaternion coefficient y within the quaterinion (w + xi + yj + zk) describing
  /// the rotation of the sensor relative to the Android Automotive sensor coordinate frame.
  /// <li>qz is the quaternion coefficient z within the quaterinion (w + xi + yj + zk) describing
  /// the rotation of the sensor relative to the Android Automotive sensor coordinate frame.
  /// </ul>
  ///
  /// This assumes each sensor uses the same axes conventions as Android Automotive.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ULTRASONICS_SENSOR_DATA} to
  /// read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  ULTRASONICS_SENSOR_ORIENTATION(
    409013281,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ULTRASONICS_SENSOR_DATA},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Static data for the field of view of each ultrasonic sensor in degrees.
  ///
  /// Each individual sensor is identified by its {@link AreaIdConfig#getAreaId()} and returns
  /// the sensor's field of view formatted as [horizontal, vertical] where:
  ///
  /// <ul>
  /// <li>horizontal is the horizontal field of view for the specified ultrasonic sensor in
  /// degrees.
  /// <li>vertical is the vertical field of view for the associated specified ultrasonic sensor in
  /// degrees.
  /// </ul>
  ///
  /// This assumes each sensor uses the same axes conventions as Android Automotive.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ULTRASONICS_SENSOR_DATA} to
  /// read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  ULTRASONICS_SENSOR_FIELD_OF_VIEW(
    406916130,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ULTRASONICS_SENSOR_DATA},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Static data for the detection range of each ultrasonic sensor in millimeters.
  ///
  /// Each individual sensor is identified by its {@link AreaIdConfig#getAreaId()} and returns
  /// the sensor's detection range formatted as [minimum, maximum] where:
  ///
  /// <ul>
  /// <li>minimum is the minimum range detectable by the ultrasonic sensor in millimeters.
  /// <li>maximum is the maximum range detectable by the ultrasonic sensor in millimeters.
  /// </ul>
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ULTRASONICS_SENSOR_DATA} to
  /// read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  ULTRASONICS_SENSOR_DETECTION_RANGE(
    406916131,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ULTRASONICS_SENSOR_DATA},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Static data for the supported ranges of each ultrasonic sensor in millimeters.
  ///
  /// For ultrasonic sensors that only support readings within a specific range. For example, if
  /// an ultrasonic sensor detects an object at 700mm, but can only report that an object has been
  /// detected between 500mm and 1000mm.
  ///
  /// Each individual sensor is identified by its {@link AreaIdConfig#getAreaId()} and returns
  /// the sensor's supported ranges formatted as [range_min_1, range_max_1, range_min_2,
  /// range_max_2, ...] where:
  ///
  /// <ul>
  /// <li>range_min_1 is the minimum of one supported range by the specified sensor in
  /// millimeters, inclusive.
  /// <li>range_max_1 is the maximum of one supported range by the specified sensor in
  /// millimeters, inclusive.
  /// <li> range_min_2 is the minimum of another supported range by the specified sensor in
  /// millimeters, inclusive.
  /// <li> range_max_2 is the maximum of another supported range by the specified sensor in
  /// millimeters, inclusive.
  /// </ul>
  ///
  /// For example, if an ultrasonic sensor supports the ranges 150mm to  499mm, 500mm to 999mm,
  /// and 1000mm to 1500mm, then the property should be set to:
  /// <ul>
  /// <li>value[0] = 150
  /// <li>value[1] = 499
  /// <li>value[2] = 500
  /// <li>value[3] = 999
  /// <li>value[4] = 1000
  /// <li>value[5] = 1500
  /// </ul>
  ///
  /// If this property is not defined, all the values within the
  /// {@link #ULTRASONICS_SENSOR_DETECTION_RANGE} for the specified sensor are assumed to be
  /// supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ULTRASONICS_SENSOR_DATA} to
  /// read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  ULTRASONICS_SENSOR_SUPPORTED_RANGES(
    406916132,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ULTRASONICS_SENSOR_DATA},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// The distance reading of the nearest detected object per sensor in millimeters.
  ///
  /// Each individual sensor is identified by its {@link AreaIdConfig#getAreaId()} and returns
  /// the sensor's measured distance formatted as [distance, distance_error] where:
  ///
  /// <ul>
  /// <li>distance is the measured distance of the nearest object in millimeters. If only a range
  /// is supported, this value must be set to the minimum supported distance in the detected range
  /// as specified in {@link #ULTRASONICS_SENSOR_SUPPORTED_RANGES}.
  /// <li>distance_error is the error of the measured distance value in millimeters.
  /// </ul>
  ///
  /// If no object is detected, an empty vector will be returned. If distance_error is not
  /// available then an array of only the measured distance will be returned.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ULTRASONICS_SENSOR_DATA} to
  /// read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  ULTRASONICS_SENSOR_MEASURED_DISTANCE(
    406916133,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ULTRASONICS_SENSOR_DATA},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// OBD2 Live Sensor Data.
  ///
  /// Not exposed through {@link android.car.hardware.property.CarPropertyManager}.
  ///
  /// This property is not supported.
  ///
  /// @deprecated use {@link android.car.diagnostic.CarDiagnosticManager} instead.
  /// @Deprecated
  /// @RequiresPermission(Car.PERMISSION_CAR_DIAGNOSTIC_READ_ALL)
  /// /
  OBD2_LIVE_FRAME(
    299896064,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// OBD2 Freeze Frame Sensor Data.
  ///
  /// Not exposed through {@link android.car.hardware.property.CarPropertyManager}.
  ///
  /// This property is not supported.
  ///
  /// @deprecated use {@link android.car.diagnostic.CarDiagnosticManager} instead.
  /// @Deprecated
  /// @RequiresPermission(Car.PERMISSION_CAR_DIAGNOSTIC_READ_ALL)
  /// /
  OBD2_FREEZE_FRAME(
    299896065,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// OBD2 Freeze Frame Information.
  ///
  /// Not exposed through {@link android.car.hardware.property.CarPropertyManager}.
  ///
  /// This property is not supported.
  ///
  /// @deprecated use {@link android.car.diagnostic.CarDiagnosticManager} instead.
  /// @Deprecated
  /// @RequiresPermission(Car.PERMISSION_CAR_DIAGNOSTIC_READ_ALL)
  /// /
  OBD2_FREEZE_FRAME_INFO(
    299896066,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// OBD2 Freeze Frame Clear.
  ///
  /// Not exposed through {@link android.car.hardware.property.CarPropertyManager}.
  ///
  /// This property is not supported.
  ///
  /// @deprecated use {@link android.car.diagnostic.CarDiagnosticManager} instead.
  /// @Deprecated
  /// @RequiresPermission(Car.PERMISSION_CAR_DIAGNOSTIC_CLEAR)
  /// /
  OBD2_FREEZE_FRAME_CLEAR(
    299896067,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// Headlights State.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_EXTERIOR_LIGHTS} to read
  /// property.
  /// Property is not writable.
  HEADLIGHTS_STATE(
    289410560,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_EXTERIOR_LIGHTS},
    {},
    [],
  ),

  /// High beam lights state.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_EXTERIOR_LIGHTS} to read
  /// property.
  /// Property is not writable.
  HIGH_BEAM_LIGHTS_STATE(
    289410561,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_EXTERIOR_LIGHTS},
    {},
    [],
  ),

  /// Fog light state.
  ///
  /// If the car has both front and rear fog lights:
  /// <ul>
  /// <li>If front and rear fog lights can only be controlled together: {@code FOG_LIGHTS_STATE}
  /// provides the state of fog lights.
  /// <li>If front and rear fog lights can only be controlled independently: {@link
  /// #FRONT_FOG_LIGHTS_STATE} and {@link #REAR_FOG_LIGHTS_STATE} provide the state of front, rear
  /// fog lights respectively.
  /// </ul>
  ///
  /// If the car has only front fog lights:
  /// <ul>
  /// <li>Only one of {@code FOG_LIGHTS_STATE} or {@link #FRONT_FOG_LIGHTS_STATE} will be
  /// implemented in the car. The implemented property provides the state of the front fog lights.
  /// </ul>
  ///
  /// If the car has only rear fog lights:
  /// <ul>
  /// <li>Only one of {@code FOG_LIGHTS_STATE} or {@link #REAR_FOG_LIGHTS_STATE} will be
  /// implemented in the car. The implemented property provides the state of the rear fog lights.
  /// </ul>
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_EXTERIOR_LIGHTS} to read
  /// property.
  /// Property is not writable.
  FOG_LIGHTS_STATE(
    289410562,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_EXTERIOR_LIGHTS},
    {},
    [],
  ),

  /// Hazard light status.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_EXTERIOR_LIGHTS} to read
  /// property.
  /// Property is not writable.
  HAZARD_LIGHTS_STATE(
    289410563,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_EXTERIOR_LIGHTS},
    {},
    [],
  ),

  /// Headlight switch.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_EXTERIOR_LIGHTS} to
  /// read and write property.
  HEADLIGHTS_SWITCH(
    289410576,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_EXTERIOR_LIGHTS},
    {CarPermissions.PERMISSION_CONTROL_EXTERIOR_LIGHTS},
    [],
  ),

  /// High beam light switch.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_EXTERIOR_LIGHTS} to
  /// read and write property.
  HIGH_BEAM_LIGHTS_SWITCH(
    289410577,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_EXTERIOR_LIGHTS},
    {CarPermissions.PERMISSION_CONTROL_EXTERIOR_LIGHTS},
    [],
  ),

  /// Fog light switch.
  ///
  /// If the car has both front and rear fog lights:
  /// <ul>
  /// <li>If front and rear fog lights can only be controlled together: {@code FOG_LIGHTS_SWITCH}
  /// should be used to change the fog lights state.
  /// <li>If front and rear fog lights can only be controlled independently: {@link
  /// #FRONT_FOG_LIGHTS_SWITCH} and {@link #REAR_FOG_LIGHTS_SWITCH} should be used to change the
  /// front and rear fog lights state respectively.
  /// </ul>
  ///
  /// If the car has only front fog lights:
  /// <ul>
  /// <li>Only one of {@code FOG_LIGHTS_SWITCH} or {@link #FRONT_FOG_LIGHTS_SWITCH} will be
  /// implemented in the car. The implemented property should be used to change the front fog
  /// lights state.
  /// </ul>
  ///
  /// If the car has only rear fog lights:
  /// <ul>
  /// <li>Only one of {@code FOG_LIGHTS_SWITCH} or {@link #REAR_FOG_LIGHTS_SWITCH} will be
  /// implemented in the car. The implemented property should be used to change the rear fog
  /// lights state.
  /// </ul>
  ///
  /// # Permissions
  /// Signature|Privileged permission{@link Car#PERMISSION_CONTROL_EXTERIOR_LIGHTS} to
  /// read and write property.
  FOG_LIGHTS_SWITCH(
    289410578,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_EXTERIOR_LIGHTS},
    {CarPermissions.PERMISSION_CONTROL_EXTERIOR_LIGHTS},
    [],
  ),

  /// Hazard light switch.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_EXTERIOR_LIGHTS} to
  /// read and write property.
  HAZARD_LIGHTS_SWITCH(
    289410579,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_EXTERIOR_LIGHTS},
    {CarPermissions.PERMISSION_CONTROL_EXTERIOR_LIGHTS},
    [],
  ),

  /// Cabin lights.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_INTERIOR_LIGHTS} to
  /// read property.
  /// Property is not writable.
  CABIN_LIGHTS_STATE(
    289410817,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_INTERIOR_LIGHTS},
    {},
    [],
  ),

  /// Cabin lights switch.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_INTERIOR_LIGHTS} to
  /// read and write property.
  CABIN_LIGHTS_SWITCH(
    289410818,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_INTERIOR_LIGHTS},
    {CarPermissions.PERMISSION_CONTROL_INTERIOR_LIGHTS},
    [],
  ),

  /// Reading lights.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_INTERIOR_LIGHTS} to
  /// read property.
  /// Property is not writable.
  READING_LIGHTS_STATE(
    356519683,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_INTERIOR_LIGHTS},
    {},
    [],
  ),

  /// Reading lights switch.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_INTERIOR_LIGHTS} to
  /// read and write property.
  READING_LIGHTS_SWITCH(
    356519684,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_INTERIOR_LIGHTS},
    {CarPermissions.PERMISSION_CONTROL_INTERIOR_LIGHTS},
    [],
  ),

  /// Steering wheel lights state.
  ///
  /// Returns the current state of the steering wheel lights. This is different from {@link
  /// #STEERING_WHEEL_LIGHTS_SWITCH} which represents the position of the switch controlling
  /// the lights. Therefore, {@code STEERING_WHEEL_LIGHTS_STATE} may not match the value of
  /// {@link #STEERING_WHEEL_LIGHTS_SWITCH} (e.g. {@link #STEERING_WHEEL_LIGHTS_SWITCH}={@code
  /// VehicleLightSwitch#STATE_AUTOMATIC} and {@code STEERING_WHEEL_LIGHTS_STATE}={@code
  /// VehicleLightState#STATE_ON}).
  ///
  /// This property will only be implemented if {@code STEERING_WHEEL_LIGHTS_STATE}'s value may
  /// be different from that of {@link #CABIN_LIGHTS_STATE}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} obtained from {@link
  /// android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which enum values from
  /// {@code VehicleLightState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_INTERIOR_LIGHTS} to
  /// read property.
  /// Property is not writable.
  STEERING_WHEEL_LIGHTS_STATE(
    289410828,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_INTERIOR_LIGHTS},
    {},
    [],
  ),

  /// Steering wheel lights switch.
  ///
  /// Returns the position of the switch controlling the steering wheel lights. This is
  /// different from {@link #STEERING_WHEEL_LIGHTS_STATE} which represents the current state of the
  /// steering wheel lights. Therefore, {@code STEERING_WHEEL_LIGHTS_SWITCH} may not match the
  /// value of {@link #STEERING_WHEEL_LIGHTS_STATE} (e.g. {@code STEERING_WHEEL_LIGHTS_SWITCH}=
  /// {@code VehicleLightSwitch#STATE_AUTOMATIC} and {@link #STEERING_WHEEL_LIGHTS_STATE}={@code
  /// VehicleLightState#STATE_ON}).
  ///
  /// This property will only be implemented if {@code STEERING_WHEEL_LIGHTS_SWITCH}'s value may
  /// be different from that of {@link #CABIN_LIGHTS_SWITCH}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} obtained from {@link
  /// android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which enum values from
  /// {@code VehicleLightSwitch} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_INTERIOR_LIGHTS} to
  /// read and write property.
  STEERING_WHEEL_LIGHTS_SWITCH(
    289410829,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_INTERIOR_LIGHTS},
    {CarPermissions.PERMISSION_CONTROL_INTERIOR_LIGHTS},
    [],
  ),

  /// Property to get the initial settings for multi-user management (such as initial user).
  ///
  /// Doesn't require permission because it's not exposed through
  /// {@link android.car.hardware.property.CarPropertyManager}.
  INITIAL_USER_INFO(
    299896583,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.normal,
    {},
    {},
    [],
  ),

  /// Property to switch user for multi-user management.
  ///
  /// Doesn't require permission because it's not exposed through
  /// {@link android.car.hardware.property.CarPropertyManager}.
  SWITCH_USER(
    299896584,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.normal,
    {},
    {},
    [],
  ),

  /// Property to create a new user for multi-user management.
  ///
  /// Doesn't require permission because it's not exposed through
  /// {@link android.car.hardware.property.CarPropertyManager}.
  CREATE_USER(
    299896585,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.normal,
    {},
    {},
    [],
  ),

  /// Property to remove a new user for multi-user management.
  ///
  /// Doesn't require permission because it's not exposed through
  /// {@link android.car.hardware.property.CarPropertyManager}.
  REMOVE_USER(
    299896586,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.normal,
    {},
    {},
    [],
  ),

  /// Property to get / set the user authentication types associated with an Android user.
  ///
  /// Doesn't require permission because it's not exposed through
  /// {@link android.car.hardware.property.CarPropertyManager}.
  USER_IDENTIFICATION_ASSOCIATION(
    299896587,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.normal,
    {},
    {},
    [],
  ),

  /// Property for VHAL to apply power policy.
  ///
  /// Doesn't require permission because it's not exposed through
  /// {@link android.car.hardware.property.CarPropertyManager}.
  POWER_POLICY_REQ(
    286265121,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// Property for VHAL to set the default power policies per power status transition.
  ///
  /// Doesn't require permission because it's not exposed through
  /// {@link android.car.hardware.property.CarPropertyManager}.
  POWER_POLICY_GROUP_REQ(
    286265122,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// Property to report a new current power policy to VHAL.
  ///
  /// Doesn't require permission because it's not exposed through
  /// {@link android.car.hardware.property.CarPropertyManager}.
  CURRENT_POWER_POLICY(
    286265123,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.normal,
    {},
    {},
    [],
  ),

  /// Property to report that car watchdog is alive.
  ///
  /// Doesn't require permission because it's not exposed through
  /// {@link android.car.hardware.property.CarPropertyManager}.
  WATCHDOG_ALIVE(
    290459441,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.normal,
    {},
    {},
    [],
  ),

  /// Property to report a process terminated by car watchdog.
  ///
  /// Doesn't require permission because it's not exposed through
  /// {@link android.car.hardware.property.CarPropertyManager}.
  WATCHDOG_TERMINATED_PROCESS(
    299896626,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.normal,
    {},
    {},
    [],
  ),

  /// Property to signal a heartbeat from VHAL.
  ///
  /// Doesn't require permission because it's not exposed through
  /// {@link android.car.hardware.property.CarPropertyManager}.
  VHAL_HEARTBEAT(
    290459443,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// Property to start the ClusterUI in cluster display.
  ///
  /// Doesn't require permission because it's not exposed through
  /// {@link android.car.hardware.property.CarPropertyManager}.
  CLUSTER_SWITCH_UI(
    289410868,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// Property to change the state of the cluster display.
  ///
  /// Doesn't require permission because it's not exposed through
  /// {@link android.car.hardware.property.CarPropertyManager}.
  CLUSTER_DISPLAY_STATE(
    289476405,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {},
    {},
    [],
  ),

  /// Property to reports the current display and ClusterUI statue.
  ///
  /// Doesn't require permission because it's not exposed through
  /// {@link android.car.hardware.property.CarPropertyManager}.
  CLUSTER_REPORT_STATE(
    299896630,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.normal,
    {},
    {},
    [],
  ),

  /// Property to request to change the cluster display state to show some ClusterUI.
  ///
  /// Doesn't require permission because it's not exposed through
  /// {@link android.car.hardware.property.CarPropertyManager}.
  CLUSTER_REQUEST_DISPLAY(
    289410871,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.normal,
    {},
    {},
    [],
  ),

  /// Property to inform the current navigation state.
  ///
  /// Doesn't require permission because it's not exposed through
  /// {@link android.car.hardware.property.CarPropertyManager}.
  CLUSTER_NAVIGATION_STATE(
    292556600,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.normal,
    {},
    {},
    [],
  ),

  /// Property to send the heartbeat signal to ClusterOS.
  ///
  /// Doesn't require permission because it's not exposed through
  /// {@link android.car.hardware.property.CarPropertyManager}.
  CLUSTER_HEARTBEAT(
    299896651,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.normal,
    {},
    {},
    [],
  ),

  /// Current date and time, encoded as Unix time.
  ///
  /// This value denotes the number of milliseconds that have elapsed since 1/1/1970 UTC.
  ///
  /// # Permissions
  /// Property is not readable.
  /// Signature|Privileged permission {@link Car#PERMISSION_CAR_EPOCH_TIME} to write
  /// property.
  EPOCH_TIME(
    290457094,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.privileged,
    {},
    {CarPermissions.PERMISSION_CAR_EPOCH_TIME},
    [],
  ),

  /// Electronic Toll Collection card type.
  ///
  /// This property indicates the type of ETC(Electronic Toll Collection) card in the vehicle.
  /// If the head unit is aware of an ETC card attached to the vehicle, this property should return
  /// the type of card attached), otherwise, this property should be UNAVAILABLE. The property value
  /// should be one of {@link VehicleElectronicTollCollectionCardType}.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_CAR_INFO} to read property.
  /// Property is not writable.
  ELECTRONIC_TOLL_COLLECTION_CARD_TYPE(
    289410873,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_INFO},
    {},
    [],
  ),

  /// Electronic Toll Collection card status.
  ///
  /// This property indicates the status of ETC(Electronic Toll Collection) card in the vehicle.
  /// If the head unit is aware of an ETC card attached to the vehicle, ETC_CARD_STATUS gives that
  /// status of the card), otherwise, this property should be UNAVAILABLE. The property value should
  /// be one of {@link VehicleElectronicTollCollectionCardStatus}.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_CAR_INFO} to read property.
  /// Property is not writable.
  ELECTRONIC_TOLL_COLLECTION_CARD_STATUS(
    289410874,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_INFO},
    {},
    [],
  ),

  /// Front fog lights state.
  ///
  /// Please refer to the documentation on {@link #FOG_LIGHTS_STATE} for more information.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_EXTERIOR_LIGHTS} to read
  /// property.
  /// Property is not writable.
  FRONT_FOG_LIGHTS_STATE(
    289410875,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_EXTERIOR_LIGHTS},
    {},
    [],
  ),

  /// Front fog lights switch.
  ///
  /// Please refer to the documentation on {@link #FOG_LIGHTS_SWITCH} for more information.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_EXTERIOR_LIGHTS} to
  /// read and write property.
  FRONT_FOG_LIGHTS_SWITCH(
    289410876,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_EXTERIOR_LIGHTS},
    {CarPermissions.PERMISSION_CONTROL_EXTERIOR_LIGHTS},
    [],
  ),

  /// Rear fog lights state.
  ///
  /// Please refer to the documentation on {@link #FOG_LIGHTS_STATE} for more information.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_EXTERIOR_LIGHTS} to read
  /// property.
  /// Property is not writable.
  REAR_FOG_LIGHTS_STATE(
    289410877,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_EXTERIOR_LIGHTS},
    {},
    [],
  ),

  /// Rear fog lights switch.
  ///
  /// Please refer to the documentation on {@link #FOG_LIGHTS_SWITCH} for more information.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_EXTERIOR_LIGHTS} to
  /// read and write property.
  REAR_FOG_LIGHTS_SWITCH(
    289410878,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {CarPermissions.PERMISSION_CONTROL_EXTERIOR_LIGHTS},
    {CarPermissions.PERMISSION_CONTROL_EXTERIOR_LIGHTS},
    [],
  ),

  /// EV charge current draw limit.
  ///
  /// Indicates the maximum current draw threshold for charging set by the user. {@code
  /// configArray[0]} contains the max current draw allowed by the vehicle in Amperes.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_ENERGY} or Signature|Privileged permission
  /// {@link Car#PERMISSION_CONTROL_CAR_ENERGY} to read property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_ENERGY} to write
  /// property.
  EV_CHARGE_CURRENT_DRAW_LIMIT(
    291508031,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_ENERGY,
      CarPermissions.PERMISSION_CONTROL_CAR_ENERGY,
    },
    {CarPermissions.PERMISSION_CONTROL_CAR_ENERGY},
    [],
  ),

  /// EV charge percent limit.
  ///
  /// Indicates the maximum charge percent threshold set by the user. Returns a float value
  /// from 0 to 100.
  ///
  /// configArray is optional. If it is populated, it represents the valid charge percent limit
  /// values for the vehicle. Here is an example configArray:
  /// <ul>
  /// <li>configArray[0] = 20
  /// <li>configArray[1] = 40
  /// <li>configArray[2] = 60
  /// <li>configArray[3] = 80
  /// </ul>
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_ENERGY} or Signature|Privileged permission
  /// {@link Car#PERMISSION_CONTROL_CAR_ENERGY} to read property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_ENERGY} to write
  /// property.
  EV_CHARGE_PERCENT_LIMIT(
    291508032,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_ENERGY,
      CarPermissions.PERMISSION_CONTROL_CAR_ENERGY,
    },
    {CarPermissions.PERMISSION_CONTROL_CAR_ENERGY},
    [],
  ),

  /// Charging state of the car.
  ///
  /// Returns the current charging state of the car. See {@link
  /// android.car.hardware.property.EvChargeState} for possible values for {@code EV_CHARGE_STATE}.
  ///
  /// If the vehicle has a target charge percentage other than 100, this property will return
  /// {@link EvChargeState#STATE_FULLY_CHARGED} when the battery charge level has reached the
  /// target level. See {@link #EV_CHARGE_PERCENT_LIMIT} for more context.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_ENERGY} to read property.
  /// Property is not writable.
  EV_CHARGE_STATE(
    289410881,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_ENERGY},
    {},
    [],
  ),

  /// Start or stop charging the EV battery.
  ///
  /// The setting that the user wants. Setting this property to true starts the battery charging
  /// and setting to false stops charging.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_ENERGY} or
  /// dangerous permission {@link Car#PERMISSION_ENERGY} to read.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_CAR_ENERGY} to write
  /// property.
  EV_CHARGE_SWITCH(
    287313730,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_ENERGY,
      CarPermissions.PERMISSION_CONTROL_CAR_ENERGY,
    },
    {CarPermissions.PERMISSION_CONTROL_CAR_ENERGY},
    [],
  ),

  /// Estimated charge time remaining in seconds.
  ///
  /// Returns 0 if the vehicle is not charging.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_ENERGY} to read property.
  /// Property is not writable.
  EV_CHARGE_TIME_REMAINING(
    289410883,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_ENERGY},
    {},
    [],
  ),

  /// Regenerative braking or one-pedal drive setting on the car.
  ///
  /// Returns the current state associated with the regenerative braking
  /// setting in the car. See {@link android.car.hardware.property.EvRegenerativeBrakingState} for
  /// possible values for {@code EV_REGENERATIVE_BRAKING_STATE}.
  ///
  /// If the {@link #EV_BRAKE_REGENERATION_LEVEL} property has been implemented, it is likely
  /// that the OEM supports a more granular set of regeneration levels than those provided by this
  /// property through {@link EvRegenerativeBrakingState}.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_ENERGY} to read property.
  /// Property is not writable.
  EV_REGENERATIVE_BRAKING_STATE(
    289410884,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_ENERGY},
    {},
    [],
  ),

  /// Vehicle’s curb weight in kilograms.
  ///
  /// Returns the vehicle's curb weight in kilograms. This is the total weight of a vehicle,
  /// inclusive of standard equipment and necessary operating fluids such as motor oil,
  /// transmission oil and brake fluid, but without passengers or cargo. configArray[0] specifies
  /// the vehicle’s gross weight in kilograms. This is the vehicle curb weight plus the maximum
  /// payload (passengers + cargo) the vehicle can support.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_PRIVILEGED_CAR_INFO} to read
  /// property.
  /// Property is not writable.
  VEHICLE_CURB_WEIGHT(
    289410886,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_PRIVILEGED_CAR_INFO},
    {},
    [],
  ),

  /// Indicates if there is a trailer present or not.
  ///
  /// Returns the trailer state of the car. See {@code TrailerState} for possible values for
  /// {@code TRAILER_PRESENT}.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_PRIVILEGED_CAR_INFO} to read
  /// property.
  /// Property is not writable.
  TRAILER_PRESENT(
    289410885,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_PRIVILEGED_CAR_INFO},
    {},
    [],
  ),

  /// EU's General security regulation compliance requirement.
  ///
  /// Returns whether general security regulation compliance is required, if
  /// so, what type of requirement. See {@link GsrComplianceType} for possible enums.
  ///
  /// # Permissions
  /// Normal permission {@link Car#PERMISSION_CAR_INFO} to read property.
  /// Property is not writable.
  GENERAL_SAFETY_REGULATION_COMPLIANCE(
    289410887,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_INFO},
    {},
    [],
  ),

  /// Current state of vehicle autonomy.
  ///
  /// Defines the level of autonomy currently engaged in the vehicle from the J3016_202104
  /// revision of the SAE standard levels 0-5, with 0 representing no autonomy and 5 representing
  /// full driving automation.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.VehicleAutonomousState} are supported.
  ///
  /// # Permissions
  /// Dangerous permission {@link Car#PERMISSION_CAR_DRIVING_STATE_3P} or Signature|Privileged
  /// permission {@link Car#PERMISSION_CAR_DRIVING_STATE} to read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_25Q2_3P_PERMISSIONS
  VEHICLE_DRIVING_AUTOMATION_CURRENT_LEVEL(
    289410892,
    VehiclePropertyAccess.normal,
    VehiclePropertyAccess.unavailable,
    {
      CarPermissions.PERMISSION_CAR_DRIVING_STATE_3P,
      CarPermissions.PERMISSION_CAR_DRIVING_STATE,
    },
    {},
    ['FLAG_VEHICLE_PROPERTY_25Q2_3P_PERMISSIONS'],
  ),

  /// Target state of vehicle autonomy.
  ///
  /// Defines the level of autonomy being targeted by the vehicle from the J3016_202104 revision
  /// of the SAE standard levels 0-5, with 0 representing no autonomy and 5 representing full
  /// driving automation.
  ///
  /// For example, suppose the vehicle is currently in a Level 3 state of automation and wants
  /// to give the driver full manual control (i.e. Level 0) as soon as it's safe to do so. In this
  /// scenario, this property will be set to {@link
  /// android.car.hardware.property.VehicleAutonomousState#LEVEL_0}. Similarly, if the vehicle is
  /// currently in Level 1 state of automation and wants to go up to Level 2, this property will be
  /// set to {@link android.car.hardware.property.VehicleAutonomousState#LEVEL_2}. If the vehicle
  /// has already reached and is currently in the target level of autonomy, this property will be
  /// equal to the value of {@link #VEHICLE_DRIVING_AUTOMATION_CURRENT_LEVEL}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.CarPropertyManager#getSupportedValuesList(int, int)} array
  /// specifies which states from {@link android.car.hardware.property.VehicleAutonomousState} are
  /// supported. This will always match the value specified by {@link
  /// android.car.hardware.property.CarPropertyManager#getSupportedValuesList(int, int)} for
  /// {@link #VEHICLE_DRIVING_AUTOMATION_CURRENT_LEVEL}.
  ///
  /// For the property that communicates the current state of autonomy, see
  /// {@link #VEHICLE_DRIVING_AUTOMATION_CURRENT_LEVEL}.
  ///
  /// # Permissions
  /// Signature|Privileged permission "android.car.permission.CAR_DRIVING_STATE" to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_ANDROID_B_VEHICLE_PROPERTIES
  VEHICLE_DRIVING_AUTOMATION_TARGET_LEVEL(
    289410895,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_CAR_DRIVING_STATE},
    {},
    ['FLAG_ANDROID_B_VEHICLE_PROPERTIES'],
  ),

  /// Enable or disable Automatic Emergency Braking (AEB).
  ///
  /// Returns true if AEB is enabled and false if AEB is disabled. When AEB is enabled, the ADAS
  /// system in the vehicle should be turned on and monitoring to avoid potential collisions. This
  /// property applies for higher speed applications only. For enabling low speed automatic
  /// emergency braking, {@link LOW_SPEED_AUTOMATIC_EMERGENCY_BRAKING_ENABLED} will be used.
  ///
  /// This property is defined as read_write, but OEMs have the option to implement it as read
  /// only.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_SETTINGS} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to read
  /// property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  AUTOMATIC_EMERGENCY_BRAKING_ENABLED(
    287313920,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_ADAS_SETTINGS,
      CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS,
    },
    {CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Automatic Emergency Braking (AEB) state.
  ///
  /// Returns the current state of AEB. This property will always return a valid state defined
  /// in {@link android.car.hardware.property.AutomaticEmergencyBrakingState} or {@link
  /// android.car.hardware.property.ErrorState}. This property should apply for higher speed
  /// applications only. For representing the state of the low speed automatic emergency braking
  /// system, {@link LOW_SPEED_AUTOMATIC_EMERGENCY_BRAKING_STATE} should be used.
  ///
  /// If AEB includes forward collision warnings before activating the brakes, those warnings
  /// will be surfaced through the Forward Collision Warning (FCW) properties.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.AutomaticEmergencyBrakingState} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_STATES} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  AUTOMATIC_EMERGENCY_BRAKING_STATE(
    289411073,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ADAS_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Enable or disable Forward Collision Warning (FCW).
  ///
  /// Returns true if FCW is enabled and false if FCW is disabled. When FCW is enabled, the ADAS
  /// system in the vehicle should be turned on and monitoring for potential collisions.
  ///
  /// This property is defined as read_write, but OEMs have the option to implement it as read
  /// only.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_SETTINGS} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to read
  /// property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  FORWARD_COLLISION_WARNING_ENABLED(
    287313922,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_ADAS_SETTINGS,
      CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS,
    },
    {CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Forward Collision Warning State (FCW) state.
  ///
  /// Returns the current state of FCW. This property will always return a valid state defined
  /// in {@link android.car.hardware.property.ForwardCollisionWarningState} or {@link
  /// android.car.hardware.property.ErrorState}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.ForwardCollisionWarningState} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_STATES} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  FORWARD_COLLISION_WARNING_STATE(
    289411075,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ADAS_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Enable and disable Blind Spot Warning (BSW).
  ///
  /// Returns true if BSW is enabled and false if BSW is disabled. When BSW is enabled, the ADAS
  /// system in the vehicle should be turned on and monitoring for objects in the vehicle’s blind
  /// spots.
  ///
  /// This property is defined as read_write, but OEMs have the option to implement it as read
  /// only.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_SETTINGS} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to read
  /// property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  BLIND_SPOT_WARNING_ENABLED(
    287313924,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_ADAS_SETTINGS,
      CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS,
    },
    {CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Blind Spot Warning (BSW) state.
  ///
  /// Returns the current state of BSW. This property will always return a valid state defined
  /// in {@link android.car.hardware.property.BlindSpotWarningState} or {@link
  /// android.car.hardware.property.ErrorState}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.BlindSpotWarningState} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_STATES} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  BLIND_SPOT_WARNING_STATE(
    339742725,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ADAS_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Enable or disable Lane Departure Warning (LDW).
  ///
  /// Returns true if LDW is enabled and false if LDW is disabled. When LDW is enabled, the ADAS
  /// system in the vehicle should be turned on and monitoring if the vehicle is approaching or
  /// crossing lane lines, in which case a warning will be given.
  ///
  /// This property is defined as read_write, but OEMs have the option to implement it as read
  /// only.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_SETTINGS} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to read
  /// property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  LANE_DEPARTURE_WARNING_ENABLED(
    287313926,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_ADAS_SETTINGS,
      CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS,
    },
    {CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Lane Departure Warning (LDW) state.
  ///
  /// Returns the current state of LDW. This property will always return a valid state defined
  /// in {@link android.car.hardware.property.LaneDepartureWarningState} or {@link
  /// android.car.hardware.property.ErrorState}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.LaneDepartureWarningState} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_STATES} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  LANE_DEPARTURE_WARNING_STATE(
    289411079,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ADAS_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Enable or disable Lane Keep Assist (LKA).
  ///
  /// Returns true if LKA is enabled and false if LKA is disabled. When LKA is enabled, the ADAS
  /// system in the vehicle should be turned on and monitoring if the driver unintentionally drifts
  /// toward or over the lane marking. If an unintentional lane departure is detected, the system
  /// applies steering control to return the vehicle into the current lane.
  ///
  /// This is different from Lane Centering Assist (LCA) which, when activated, applies
  /// continuous steering control to keep the vehicle centered in the current lane.
  ///
  /// This property is defined as read_write, but OEMs have the option to implement it as read
  /// only.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_SETTINGS} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to read
  /// property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  LANE_KEEP_ASSIST_ENABLED(
    287313928,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_ADAS_SETTINGS,
      CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS,
    },
    {CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Lane Keep Assist (LKA) state.
  ///
  /// Returns the current state of LKA. This property will always return a valid state defined
  /// in {@link android.car.hardware.property.LaneKeepAssistState} or {@link
  /// android.car.hardware.property.ErrorState}.
  ///
  /// If LKA includes lane departure warnings before applying steering corrections, those
  /// warnings will be surfaced through {@link #LANE_DEPARTURE_WARNING_STATE}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.LaneKeepAssistState} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_STATES} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  LANE_KEEP_ASSIST_STATE(
    289411081,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ADAS_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Enable or disable Lane Centering Assist (LCA).
  ///
  /// Returns true if LCA is enabled and false if LCA is disabled. When LCA is enabled, the ADAS
  /// system in the vehicle should be turned on and waiting for an activation signal from the
  /// driver. Once the feature is activated, the ADAS system should be steering the vehicle to keep
  /// it centered in its current lane.
  ///
  /// This is different from Lane Keep Assist (LKA) which monitors if the driver unintentionally
  /// drifts toward or over the lane marking. If an unintentional lane departure is detected, the
  /// system applies steering control to return the vehicle into the current lane.
  ///
  /// This property is defined as read_write, but OEMs have the option to implement it as read
  /// only.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_SETTINGS} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to read
  /// property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  LANE_CENTERING_ASSIST_ENABLED(
    287313930,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_ADAS_SETTINGS,
      CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS,
    },
    {CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Lane Centering Assist (LCA) commands.
  ///
  /// Commands to activate and suspend LCA. They are only valid when {@link
  /// #LANE_CENTERING_ASSIST_ENABLED} = {@code true}. Otherwise, these commands will throw a {@link
  /// android.car.hardware.property.PropertyNotAvailableException}.
  ///
  /// When the command {@link android.car.hardware.property.LaneCenteringAssistCommand#ACTIVATE}
  /// is sent, {@link #LANE_CENTERING_ASSIST_STATE} will be set to {@link
  /// android.car.hardware.property.LaneCenteringAssistState#ACTIVATION_REQUESTED}. When the
  /// command {@link android.car.hardware.property.LaneCenteringAssistCommand#ACTIVATE} succeeds,
  /// {@link #LANE_CENTERING_ASSIST_STATE} will be set to {@link
  /// android.car.hardware.property.LaneCenteringAssistState#ACTIVATED}. When the command {@link
  /// android.car.hardware.property.LaneCenteringAssistCommand#DEACTIVATE} succeeds, {@link
  /// #LANE_CENTERING_ASSIST_STATE} will be set to {@link
  /// android.car.hardware.property.LaneCenteringAssistState#ENABLED}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which enum
  /// values from {@link android.car.hardware.property.LaneCenteringAssistCommand} are supported.
  ///
  /// # Permissions
  /// Property is not readable.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_STATES} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  LANE_CENTERING_ASSIST_COMMAND(
    289411083,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.privileged,
    {},
    {CarPermissions.PERMISSION_CONTROL_ADAS_STATES},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Lane Centering Assist (LCA) state.
  ///
  /// Returns the current state of LCA. This property will always return a valid state defined
  /// in {@link android.car.hardware.property.LaneCenteringAssistState} or {@link
  /// android.car.hardware.property.ErrorState}.
  ///
  /// If LCA includes lane departure warnings, those warnings will be surfaced through the Lane
  /// Departure Warning (LDW) properties.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.LaneCenteringAssistState} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_STATES} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  LANE_CENTERING_ASSIST_STATE(
    289411084,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ADAS_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Enable or disable Emergency Lane Keep Assist (ELKA).
  ///
  /// Return true if ELKA is enabled and false if ELKA is disabled. When ELKA is enabled, the
  /// ADAS system in the vehicle should be on and monitoring for unsafe lane changes by the driver.
  /// When an unsafe maneuver is detected, ELKA alerts the driver and applies steering corrections
  /// to keep the vehicle in its original lane.
  ///
  /// This property is defined as read_write, but OEMs have the option to implement it as read
  /// only.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_SETTINGS} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to read
  /// property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  EMERGENCY_LANE_KEEP_ASSIST_ENABLED(
    287313933,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_ADAS_SETTINGS,
      CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS,
    },
    {CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Emergency Lane Keep Assist (ELKA) state.
  ///
  /// Returns the current state of ELKA. Generally, this property should return a valid state
  /// defined in the {@link android.car.hardware.property.EmergencyLaneKeepAssistState} or {@link
  /// android.car.hardware.property.ErrorState}. For example, if the feature is not available due
  /// to some temporary state, that information should be conveyed through {@link
  /// android.car.hardware.property.ErrorState}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.EmergencyLaneKeepAssistState} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_STATES} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  EMERGENCY_LANE_KEEP_ASSIST_STATE(
    289411086,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ADAS_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Enable or disable Cruise Control (CC).
  ///
  /// Return true if CC is enabled and false if CC is disabled. This property is shared by all
  /// forms of {@link android.car.hardware.property.CruiseControlType}).
  ///
  /// When CC is enabled, the ADAS system in the vehicle should be turned on and responding to
  /// commands.
  ///
  /// This property is defined as read_write, but OEMs have the option to implement it as read
  /// only.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_SETTINGS} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to read
  /// property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  CRUISE_CONTROL_ENABLED(
    287313935,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_ADAS_SETTINGS,
      CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS,
    },
    {CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Current type of Cruise Control (CC).
  ///
  /// When {@link #CRUISE_CONTROL_ENABLED} is true, this property returns the type of CC that is
  /// currently enabled (for example, standard CC, adaptive CC, etc.). Generally, this property
  /// should return a valid state defined in the {@link
  /// android.car.hardware.property.CruiseControlType} or {@link
  /// android.car.hardware.property.ErrorState}. For example, if the feature is not available due
  /// to some temporary state, that information should be conveyed through {@link
  /// android.car.hardware.property.ErrorState}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.CruiseControlType} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// Trying to write {@link android.car.hardware.property.CruiseControlType#OTHER} or an
  /// {@link android.car.hardware.property.ErrorState} to this property will throw an {@code
  /// IllegalArgumentException}.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_STATES} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_STATES} to read
  /// property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_STATES} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  CRUISE_CONTROL_TYPE(
    289411088,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_ADAS_STATES,
      CarPermissions.PERMISSION_CONTROL_ADAS_STATES,
    },
    {CarPermissions.PERMISSION_CONTROL_ADAS_STATES},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Current state of Cruise Control (CC).
  ///
  /// This property returns the state of CC. Generally, this property should return a valid
  /// state defined in the {@link android.car.hardware.property.CruiseControlState} or {@link
  /// android.car.hardware.property.ErrorState}. For example, if the feature is not available due
  /// to some temporary state, that information should be conveyed through {@link
  /// android.car.hardware.property.ErrorState}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.CruiseControlState} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_STATES} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  CRUISE_CONTROL_STATE(
    289411089,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ADAS_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Write Cruise Control (CC) commands.
  ///
  /// See {@link android.car.hardware.property.CruiseControlCommand} for the details about
  /// each supported command.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.CruiseControlCommand} are supported.
  ///
  /// When this property is unavailable (for example when {@link #CRUISE_CONTROL_ENABLED} is
  /// false), writing this property will throw a {@link
  /// android.car.hardware.property.PropertyNotAvailableException}.
  ///
  /// # Permissions
  /// Property is not readable.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_STATES} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  CRUISE_CONTROL_COMMAND(
    289411090,
    VehiclePropertyAccess.unavailable,
    VehiclePropertyAccess.privileged,
    {},
    {CarPermissions.PERMISSION_CONTROL_ADAS_STATES},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Current target speed for Cruise Control (CC) in meters per second.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} and {@link
  /// android.car.hardware.property.AreaIdConfig#getMaxValue()} return the min and max target
  /// speed values respectively. These values will be non-negative.
  ///
  /// {@link android.car.hardware.property.AreaIdConfig#getMinValue()} represents the lower
  /// bound of the target speed.
  /// {@link android.car.hardware.property.AreaIdConfig#getMaxValue()} represents the upper
  /// bound of the target speed.
  ///
  /// When this property is unavailable (for example when {@link #CRUISE_CONTROL_ENABLED} is
  /// false), reading this property will throw a {@link
  /// android.car.hardware.property.PropertyNotAvailableException}.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_STATES} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  CRUISE_CONTROL_TARGET_SPEED(
    291508243,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ADAS_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Current target time gap for Adaptive Cruise Control (ACC) or Predictive Cruise Control in
  /// milliseconds.
  ///
  /// This property should specify the target time gap to a leading vehicle. This gap is defined
  /// as the time to travel the distance between the leading vehicle's rear-most point to the ACC
  /// vehicle's front-most point. The actual time gap from a leading vehicle can be above or below
  /// this value.
  ///
  /// The possible values to set for the target time gap should be specified in {@code
  /// configArray} in ascending order. All values must be positive. If the property is writable,
  /// all values must be writable.
  ///
  /// When this property is unavailable (for example when {@link #CRUISE_CONTROL_ENABLED} is
  /// false), reading or writing this property will throw a {@link
  /// android.car.hardware.property.PropertyNotAvailableException}.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_STATES} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_STATES} to read
  /// property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_STATES} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  ADAPTIVE_CRUISE_CONTROL_TARGET_TIME_GAP(
    289411092,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_ADAS_STATES,
      CarPermissions.PERMISSION_CONTROL_ADAS_STATES,
    },
    {CarPermissions.PERMISSION_CONTROL_ADAS_STATES},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Measured distance from leading vehicle when using Adaptive Cruise Control (ACC) or Predictive
  /// Cruise Control in millimeters.
  ///
  /// Returns the measured distance in meters from the lead vehicle for ACC between the
  /// rear-most point of the leading vehicle and the front-most point of the ACC vehicle.
  ///
  /// {@link CarPropertyConfig#getMinValue(int)} returns 0.
  /// {@link CarPropertyConfig#getMaxValue(int)} returns the maximum range the distance sensor
  /// can support. This value will be non-negative.
  ///
  /// When no lead vehicle is detected (that is, when there is no leading vehicle or the leading
  /// vehicle is too far away for the sensor to detect), this property will throw a {@link
  /// android.car.hardware.property.PropertyNotAvailableException}.
  ///
  /// When this property is unavailable (for example when {@link #CRUISE_CONTROL_ENABLED} is
  /// false), reading this property will throw a {@link
  /// android.car.hardware.property.PropertyNotAvailableException}.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_STATES} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  ADAPTIVE_CRUISE_CONTROL_LEAD_VEHICLE_MEASURED_DISTANCE(
    289411093,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ADAS_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Enable or disable Hands On Detection (HOD).
  ///
  /// Return true if HOD is enabled and false if HOD is disabled. When HOD is enabled, a system
  /// inside the vehicle should be monitoring the presence of the driver's hands on the steering
  /// wheel and send a warning if it detects that the driver's hands are no longer on the steering
  /// wheel.
  ///
  /// This property is defined as read_write, but OEMs have the option to implement it as read
  /// only.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_DRIVER_MONITORING_SETTINGS}
  /// or Signature|Privileged permission {@link
  /// Car#PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS} to read property.
  /// Signature|Privileged permission {@link
  /// Car#PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS} to write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  HANDS_ON_DETECTION_ENABLED(
    287313942,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_DRIVER_MONITORING_SETTINGS,
      CarPermissions.PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS,
    },
    {CarPermissions.PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Hands On Detection (HOD) driver state.
  ///
  /// Returns whether the driver's hands are on the steering wheel. Generally, this property
  /// should return a valid state defined in the {@link
  /// android.car.hardware.property.HandsOnDetectionDriverState} or {@link
  /// android.car.hardware.property.ErrorState}. For example, if the feature is not available due
  /// to some temporary state, that information should be conveyed through {@link
  /// android.car.hardware.property.ErrorState}.
  ///
  /// If the vehicle is sending a warning to the user because the driver's hands have been off
  /// the steering wheel for too long, the warning should be surfaced through
  /// {@link #HANDS_ON_DETECTION_WARNING}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.HandsOnDetectionDriverState} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_DRIVER_MONITORING_STATES} to
  /// read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  HANDS_ON_DETECTION_DRIVER_STATE(
    289411095,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_DRIVER_MONITORING_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Hands On Detection (HOD) warning.
  ///
  /// Returns whether a warning is being sent to the driver for having their hands off the wheel
  /// for too long a duration.
  ///
  /// Generally, this property should return a valid state defined in the {@link
  /// android.car.hardware.property.HandsOnDetectionWarning} or {@link
  /// android.car.hardware.property.ErrorState}. For example, if the feature is not available due
  /// to some temporary state, that information should be conveyed through an {@link
  /// android.car.hardware.property.ErrorState}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.HandsOnDetectionWarning} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_DRIVER_MONITORING_STATES} to
  /// read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  HANDS_ON_DETECTION_WARNING(
    289411096,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_DRIVER_MONITORING_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Enable or disable driver drowsiness and attention monitoring.
  ///
  /// Set true to enable driver drowsiness and attention monitoring and false to disable driver
  /// drowsiness and attention monitoring. When driver drowsiness and attention monitoring is
  /// enabled, a system inside the vehicle will monitor the drowsiness and attention level of the
  /// driver and warn the driver if needed.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_DRIVER_MONITORING_SETTINGS}
  /// or Signature|Privileged permission {@link
  /// Car#PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS} to read property.
  /// Signature|Privileged permission {@link
  /// Car#PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS} to write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  DRIVER_DROWSINESS_ATTENTION_SYSTEM_ENABLED(
    287313945,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_DRIVER_MONITORING_SETTINGS,
      CarPermissions.PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS,
    },
    {CarPermissions.PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Driver drowsiness and attention level state.
  ///
  /// Returns the current detected state of driver drowiness and attention level based on the
  /// Karolinska Sleepiness Scale (KSS).
  ///
  /// Generally, this property should return a valid state defined in the {@link
  /// android.car.hardware.property.DriverDrowsinessAttentionState} or {@link
  /// android.car.hardware.property.ErrorState}. For example, if the feature is not available due
  /// to some temporary state, that information should be conveyed through {@link
  /// android.car.hardware.property.ErrorState}.
  ///
  /// If the vehicle is sending a warning to the user because the driver is too drowsy, the
  /// warning should be surfaced through {@link #DRIVER_DROWSINESS_ATTENTION_WARNING}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.DriverDrowsinessAttentionState} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_DRIVER_MONITORING_STATES} to
  /// read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  DRIVER_DROWSINESS_ATTENTION_STATE(
    289411098,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_DRIVER_MONITORING_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Enable or disable driver drowsiness and attention warnings.
  ///
  /// Set true to enable driver drowsiness and attention warnings and false to disable driver
  /// drowsiness and attention warnings. When driver drowsiness and attention warnings are enabled,
  /// the driver drowsiness and attention monitoring system inside the vehicle should warn the
  /// driver when it detects the driver is drowsy or not attentive.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_DRIVER_MONITORING_SETTINGS}
  /// or Signature|Privileged permission {@link
  /// Car#PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS} to read property.
  /// Signature|Privileged permission {@link
  /// Car#PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS} to write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  DRIVER_DROWSINESS_ATTENTION_WARNING_ENABLED(
    287313947,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_DRIVER_MONITORING_SETTINGS,
      CarPermissions.PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS,
    },
    {CarPermissions.PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Driver drowsiness and attention warning.
  ///
  /// Returns whether a warning is being sent to the driver for being drowsy or not attentive.
  ///
  /// Generally, this property should return a valid state defined in the {@link
  /// android.car.hardware.property.DriverDrowsinessAttentionWarning} or {@link
  /// android.car.hardware.property.ErrorState}. For example, if the feature is not available due
  /// to some temporary state, that information should be conveyed through an {@link
  /// android.car.hardware.property.ErrorState}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.DriverDrowsinessAttentionWarning} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_DRIVER_MONITORING_STATES} to
  /// read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  DRIVER_DROWSINESS_ATTENTION_WARNING(
    289411100,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_DRIVER_MONITORING_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Enable or disable driver distraction monitoring.
  ///
  /// Set true to enable driver distraction monitoring and false to disable driver distraction
  /// monitoring. When driver distraction monitoring is enabled, a system inside the vehicle should
  /// be monitoring the distraction level of the driver and warn the driver if needed.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_DRIVER_MONITORING_SETTINGS}
  /// or Signature|Privileged permission {@link
  /// Car#PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS} to read property.
  /// Signature|Privileged permission {@link
  /// Car#PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS} to write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  DRIVER_DISTRACTION_SYSTEM_ENABLED(
    287313949,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_DRIVER_MONITORING_SETTINGS,
      CarPermissions.PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS,
    },
    {CarPermissions.PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Driver distraction state.
  ///
  /// Returns the current detected driver distraction state.
  ///
  /// Generally, this property should return a valid state defined in the {@link
  /// android.car.hardware.property.DriverDistractionState} or {@link
  /// android.car.hardware.property.ErrorState}. For example, if the feature is not available due
  /// to some temporary state, that information should be conveyed through {@link
  /// android.car.hardware.property.ErrorState}.
  ///
  /// If the vehicle is sending a warning to the user because the driver is too distracted, the
  /// warning should be surfaced through {@link #DRIVER_DISTRACTION_WARNING}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.DriverDistractionState} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_DRIVER_MONITORING_STATES} to
  /// read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  DRIVER_DISTRACTION_STATE(
    289411102,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_DRIVER_MONITORING_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Enable or disable driver distraction warnings.
  ///
  /// Set true to enable driver distraction warnings and false to disable driver distraction
  /// warnings. When driver distraction warnings are enabled, the driver distraction monitoring
  /// system inside the vehicle should warn the driver when it detects the driver is distracted.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_DRIVER_MONITORING_SETTINGS}
  /// or Signature|Privileged permission {@link
  /// Car#PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS} to read property.
  /// Signature|Privileged permission {@link
  /// Car#PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS} to write property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  DRIVER_DISTRACTION_WARNING_ENABLED(
    287313951,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_DRIVER_MONITORING_SETTINGS,
      CarPermissions.PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS,
    },
    {CarPermissions.PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Driver distraction warning.
  ///
  /// Returns whether a warning is being sent to the driver for being distracted.
  ///
  /// Generally, this property should return a valid state defined in the {@link
  /// android.car.hardware.property.DriverDistractionWarning} or {@link
  /// android.car.hardware.property.ErrorState}. For example, if the feature is not available due
  /// to some temporary state, that information should be conveyed through an {@link
  /// android.car.hardware.property.ErrorState}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.DriverDistractionWarning} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_DRIVER_MONITORING_STATES} to
  /// read property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  DRIVER_DISTRACTION_WARNING(
    289411104,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_DRIVER_MONITORING_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Enable or disable Low Speed Collision Warning.
  ///
  /// Returns true if low speed collision warning is enabled and false if low speed collision
  /// warning is disabled. When low speed collision warning is enabled, the ADAS system in the
  /// vehicle will warn the driver of potential collisions at low speeds. This property is
  /// different from the pre-existing {@link VehiclePropertyIds#FORWARD_COLLISION_WARNING_ENABLED},
  /// which applies to higher speed applications only. If the vehicle doesn't have a separate
  /// collision detection system for low speed environments, this property will not be implemented.
  ///
  /// This property is defined as read_write, but OEMs have the option to implement it as read
  /// only.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_SETTINGS} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to read
  /// property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  LOW_SPEED_COLLISION_WARNING_ENABLED(
    287313953,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_ADAS_SETTINGS,
      CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS,
    },
    {CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Low Speed Collision Warning State state.
  ///
  /// Returns the current state of Low Speed Collision Warning. This property will always return
  /// a valid state defined in {@link android.car.hardware.property.LowSpeedCollisionWarningState}
  /// or {@link android.car.hardware.property.ErrorState}. This property is different from the
  /// pre-existing {@link VehiclePropertyIds#FORWARD_COLLISION_WARNING_ENABLED}, which applies to
  /// higher speed applications only. If the vehicle doesn't have a separate collision detection
  /// system for low speed environments, this property will not be implemented.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.LowSpeedCollisionWarningState} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_STATES} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  LOW_SPEED_COLLISION_WARNING_STATE(
    289411106,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ADAS_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Enable or disable Cross Traffic Monitoring.
  ///
  /// Returns true if Cross Traffic Monitoring is enabled and false if Cross Traffic Monitoring
  /// is disabled. When Cross Traffic Monitoring is enabled, the ADAS system in the vehicle should
  /// be turned on and monitoring for potential sideways collisions.
  ///
  /// This property is defined as read_write, but OEMs have the option to implement it as read
  /// only.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_SETTINGS} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to read
  /// property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  CROSS_TRAFFIC_MONITORING_ENABLED(
    287313955,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_ADAS_SETTINGS,
      CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS,
    },
    {CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Cross Traffic Monitoring Warning state.
  ///
  /// Returns the current state of Cross Traffic Monitoring Warning. This property will always
  /// return a valid state defined in {@link
  /// android.car.hardware.property.CrossTrafficMonitoringWarningState} or {@link
  /// android.car.hardware.property.ErrorState}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.CrossTrafficMonitoringWarningState} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_STATES} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  CROSS_TRAFFIC_MONITORING_WARNING_STATE(
    289411108,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ADAS_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Enable or disable Low Speed Automatic Emergency Braking.
  ///
  /// Returns true if Low Speed Automatic Emergency Braking is enabled or false if Low Speed
  /// Automatic Emergency Braking is disabled. When Low Speed Automatic Emergency Braking is
  /// enabled, the ADAS system in the vehicle will be turned on and monitoring to avoid potential
  /// collisions in low speed conditions. This property is different from the pre-existing
  /// AUTOMATIC_EMERGENCY_BRAKING_ENABLED, which should apply to higher speed applications only. If
  /// the vehicle doesn't have a separate collision avoidance system for low speed environments,
  /// this property will not be implemented.
  ///
  /// This property is defined as read_write, but OEMs have the option to implement it as read
  /// only.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_SETTINGS} or
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to read
  /// property.
  /// Signature|Privileged permission {@link Car#PERMISSION_CONTROL_ADAS_SETTINGS} to write
  /// property.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  LOW_SPEED_AUTOMATIC_EMERGENCY_BRAKING_ENABLED(
    287313957,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.privileged,
    {
      CarPermissions.PERMISSION_READ_ADAS_SETTINGS,
      CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS,
    },
    {CarPermissions.PERMISSION_CONTROL_ADAS_SETTINGS},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  ),

  /// Low Speed Automatic Emergency Braking state.
  ///
  /// Returns the current state of Low Speed Automatic Emergency Braking. This property will
  /// always return a valid state defined in {@link
  /// android.car.hardware.property.LowSpeedAutomaticEmergencyBrakingState} or {@link
  /// android.car.hardware.property.ErrorState}.
  ///
  /// If Low Speed Automatic Emergency Braking includes collision warnings before activating the
  /// brakes, those warnings will be surfaced through use of {@link
  /// android.car.VehiclePropertyIds#LOW_SPEED_COLLISION_WARNING_ENABLED} and {@link
  /// android.car.VehiclePropertyIds#LOW_SPEED_COLLISION_WARNING_STATE}.
  ///
  /// For the global area ID (0), the {@link
  /// android.car.hardware.property.AreaIdConfig#getSupportedEnumValues()} array obtained from
  /// {@link android.car.hardware.CarPropertyConfig#getAreaIdConfig(int)} specifies which states
  /// from {@link android.car.hardware.property.LowSpeedAutomaticEmergencyBrakingState} and {@link
  /// android.car.hardware.property.ErrorState} are supported.
  ///
  /// # Permissions
  /// Signature|Privileged permission {@link Car#PERMISSION_READ_ADAS_STATES} to read
  /// property.
  /// Property is not writable.
  ///
  /// # Availability Flag
  /// FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS
  LOW_SPEED_AUTOMATIC_EMERGENCY_BRAKING_STATE(
    289411110,
    VehiclePropertyAccess.privileged,
    VehiclePropertyAccess.unavailable,
    {CarPermissions.PERMISSION_READ_ADAS_STATES},
    {},
    ['FLAG_VEHICLE_PROPERTY_REMOVE_SYSTEM_API_TAGS'],
  );

  const VehicleProperty(
    this.id,
    this.read,
    this.write,
    this.readPermissions,
    this.writePermissions,
    this.flags,
  );

  final int id;

  final VehiclePropertyAccess read;

  final VehiclePropertyAccess write;

  final Set<CarPermissions> readPermissions;

  final Set<CarPermissions> writePermissions;

  final List<String> flags;
}
