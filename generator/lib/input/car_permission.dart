// ignore_for_file: doc_directive_unknown, slash_for_doc_comments, constant_identifier_names

// This model file is a manual translation of the permission part of the Car Java Class into a Dart Enum.
// https://android.googlesource.com/platform/packages/services/Car/+/master/car-lib/src/android/car/Car.java

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

enum CarPermission {
    /**
     * Signature|Privileged permission necessary to read driver monitoring systems settings
     * information.
     *
     * Examples of settings include the ENABLED properties for the supported driver monitoring
     * features.
     */
    
    PERMISSION_READ_DRIVER_MONITORING_SETTINGS(
            "android.car.permission.READ_DRIVER_MONITORING_SETTINGS"),
    /**
     * Signature|Privileged permission necessary to control driver monitoring systems settings
     * information.
     *
     * Examples of settings include the ENABLED properties for the supported driver monitoring
     * features.
     */
    
    PERMISSION_CONTROL_DRIVER_MONITORING_SETTINGS(
            "android.car.permission.CONTROL_DRIVER_MONITORING_SETTINGS"),
    /**
     * Signature|Privileged permission necessary to read driver monitoring systems states
     * information.
     *
     * Examples of states include the STATE and WARNING properties for the supported driver
     * monitoring features.
     *
     * This is different from {@link PERMISSION_READ_DRIVER_MONITORING_SETTINGS}, which allows an
     * app to read the system settings, such as whether the system is enabled or disabled.
     */
    
    PERMISSION_READ_DRIVER_MONITORING_STATES(
            "android.car.permission.READ_DRIVER_MONITORING_STATES"),
    /**
     * Signature|Privileged permission necessary to access car's mileage information.
     */
    
    PERMISSION_MILEAGE( "android.car.permission.CAR_MILEAGE"),
    /**
     * Dangerous permission necessary to access car's mileage information.
     */
    
    PERMISSION_MILEAGE_3P( "android.car.permission.CAR_MILEAGE_3P"),
    /**
     * Dangerous permission necessary to access car's energy information.
     */
    PERMISSION_ENERGY( "android.car.permission.CAR_ENERGY"),
    /**
     * Signature|Privileged permission necessary to control car's EV charge settings.
     */
    PERMISSION_CONTROL_CAR_ENERGY(
            "android.car.permission.CONTROL_CAR_ENERGY"),
    /**
     * Signature|Privileged permission necessary to change value of car's range remaining.
     */
    
    PERMISSION_ADJUST_RANGE_REMAINING(
            "android.car.permission.ADJUST_RANGE_REMAINING"),
    /**
     * Signature|Privileged permission necessary to access car's VIN information
     */
    PERMISSION_IDENTIFICATION(
            "android.car.permission.CAR_IDENTIFICATION"),
    /**
     * Dangerous permission necessary to access car's speed.
     */
    PERMISSION_SPEED( "android.car.permission.CAR_SPEED"),
    /**
     * Signature|Privileged permission necessary to access car's dynamics state.
     */
    
    PERMISSION_CAR_DYNAMICS_STATE(
            "android.car.permission.CAR_DYNAMICS_STATE"),
    /**
     * Signature|Privileged permission necessary to control car's dynamics state.
     */
    
    PERMISSION_CONTROL_CAR_DYNAMICS_STATE(
            "android.car.permission.CONTROL_CAR_DYNAMICS_STATE"),
    /**
     * Normal permission necessary to access car's fuel door and ev charge port.
     */
    PERMISSION_ENERGY_PORTS( "android.car.permission.CAR_ENERGY_PORTS"),
    /**
     * Signature|Privileged permission necessary to control car's fuel door and ev charge port.
     */
    
    PERMISSION_CONTROL_ENERGY_PORTS(
            "android.car.permission.CONTROL_CAR_ENERGY_PORTS"),
    /**
     * Signature|Privileged permission necessary to read car's exterior lights information.
     */
    
    PERMISSION_EXTERIOR_LIGHTS(
            "android.car.permission.CAR_EXTERIOR_LIGHTS"),
    /**
     * Dangerous permission necessary to read car's exterior lights information.
     */
    
    PERMISSION_READ_EXTERIOR_LIGHTS(
            "android.car.permission.READ_CAR_EXTERIOR_LIGHTS"),
    /**
     * Signature|Privileged permission necessary to read car's interior lights information.
     */
    PERMISSION_READ_INTERIOR_LIGHTS(
            "android.car.permission.READ_CAR_INTERIOR_LIGHTS"),
    /**
     * Signature|Privileged permission necessary to control car's exterior lights.
     */
    
    PERMISSION_CONTROL_EXTERIOR_LIGHTS(
            "android.car.permission.CONTROL_CAR_EXTERIOR_LIGHTS"),
    /**
     * Dangerous permission necessary to read car horn state.
     */
    
    PERMISSION_READ_CAR_HORN( "android.car.permission.READ_CAR_HORN"),
    /**
     * Signature|Privileged permission necessary to control car horn state.
     */
    
    PERMISSION_CONTROL_CAR_HORN(
            "android.car.permission.CONTROL_CAR_HORN"),
    /**
     * Dangerous permission necessary to read car pedal information.
     */
    
    PERMISSION_READ_CAR_PEDALS(
            "android.car.permission.READ_CAR_PEDALS"),
    /**
     * Dangerous permission necessary to read brake information.
     */
    
    PERMISSION_READ_BRAKE_INFO(
            "android.car.permission.READ_BRAKE_INFO"),
    /**
     * Signature|Privileged permission necessary to control car's interior lights.
     */
    PERMISSION_CONTROL_INTERIOR_LIGHTS(
            "android.car.permission.CONTROL_CAR_INTERIOR_LIGHTS"),
    /**
     * Normal permission necessary to access car's powertrain information.
     */
    PERMISSION_POWERTRAIN( "android.car.permission.CAR_POWERTRAIN"),
    /**
     * Signature|Privileged permission necessary to control car's powertrain information.
     */
    
    PERMISSION_CONTROL_POWERTRAIN(
            "android.car.permission.CONTROL_CAR_POWERTRAIN"),
    /**
     * Signature|Privileged permission necessary to change car audio volume through
     * {@link CarAudioManager}.
     */
    PERMISSION_CAR_CONTROL_AUDIO_VOLUME(
            "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"),
    /**
     * Signature|Privileged permission necessary to change car audio settings through
     * {@link CarAudioManager}.
     */
    PERMISSION_CAR_CONTROL_AUDIO_SETTINGS(
            "android.car.permission.CAR_CONTROL_AUDIO_SETTINGS"),
    /**
     * Signature|Privileged permission necessary to receive full audio ducking events from car audio
     * focus handler.
     *
     * @hide
     */
    
    PERMISSION_RECEIVE_CAR_AUDIO_DUCKING_EVENTS(
            "android.car.permission.RECEIVE_CAR_AUDIO_DUCKING_EVENTS"),
    /**
     * Signature|Privileged permission necessary to use {@code CarNavigationStatusManager}.
     */
    PERMISSION_CAR_NAVIGATION_MANAGER(
            "android.car.permission.CAR_NAVIGATION_MANAGER"),
    /**
     * Signature|Privileged permission necessary to start activities in the instrument cluster
     * through {@link CarInstrumentClusterManager}
     *
     * @hide
     */
    
    PERMISSION_CAR_INSTRUMENT_CLUSTER_CONTROL(
            "android.car.permission.CAR_INSTRUMENT_CLUSTER_CONTROL"),
    /**
     * Signature|Privileged permission necessary to listen for the instrument cluster's navigation
     * state changes.
     *
     * @hide
     */
    
    
    PERMISSION_CAR_MONITOR_CLUSTER_NAVIGATION_STATE(
            "android.car.permission.CAR_MONITOR_CLUSTER_NAVIGATION_STATE"),
    /**
     * Signature|Privileged permission required by applications in order to be launched in the
     * instrument cluster display.
     *
     * @hide
     */
    PERMISSION_CAR_DISPLAY_IN_CLUSTER(
            "android.car.permission.CAR_DISPLAY_IN_CLUSTER"),
    /**
     * Normal permission necessary to use {@link CarInfoManager}.
     */
    PERMISSION_CAR_INFO( "android.car.permission.CAR_INFO"),
    /**
     * Signature|Privileged permission necessary to access privileged car info.
     */
    PERMISSION_PRIVILEGED_CAR_INFO(
            "android.car.permission.PRIVILEGED_CAR_INFO"),
    /**
     * Signature|Privileged permission necessary to read information of vendor properties'
     * permissions.
     * @hide
     */
    
    PERMISSION_READ_CAR_VENDOR_PERMISSION_INFO(
            "android.car.permission.READ_CAR_VENDOR_PERMISSION_INFO"),
    /**
     * Normal permission necessary to read temperature of car's exterior environment.
     */
    PERMISSION_EXTERIOR_ENVIRONMENT(
            "android.car.permission.CAR_EXTERIOR_ENVIRONMENT"),
    /**
     * Signature|Privileged permission necessary to access car specific communication channel.
     * @hide
     */
    
    PERMISSION_VENDOR_EXTENSION(
            "android.car.permission.CAR_VENDOR_EXTENSION"),
    /**
     * Signature|Privileged permission.
     * @hide
     */
    
    PERMISSION_CONTROL_APP_BLOCKING(
            "android.car.permission.CONTROL_APP_BLOCKING"),
    /**
     * Signature|Privileged permission necessary to access car's engine information.
     */
    
    PERMISSION_CAR_ENGINE_DETAILED(
            "android.car.permission.CAR_ENGINE_DETAILED"),
    /**
     * Dangerous permission necessary to access car's engine information.
     */
    
    PERMISSION_CAR_ENGINE_DETAILED_3P(
            "android.car.permission.CAR_ENGINE_DETAILED_3P"),
    /**
     * Signature|Privileged permission necessary to access car's tire pressure information.
     */
    
    PERMISSION_TIRES( "android.car.permission.CAR_TIRES"),
    /**
     * Dangerous permission necessary to access car's tire pressure information.
     */
    
    PERMISSION_TIRES_3P( "android.car.permission.CAR_TIRES_3P"),
    /**
     * Signature|Privileged permission necessary to access car's property
     * {@link VehiclePropertyIds#EPOCH_TIME}.
     */
    
    PERMISSION_CAR_EPOCH_TIME( "android.car.permission.CAR_EPOCH_TIME"),
    /**
     * Signature|Privileged permission necessary to access car's steering angle information.
     */
    PERMISSION_READ_STEERING_STATE(
            "android.car.permission.READ_CAR_STEERING"),
    /**
     * Dangerous permission necessary to access car's steering angle information.
     */
    
    PERMISSION_READ_STEERING_STATE_3P(
            "android.car.permission.READ_CAR_STEERING_3P"),
    /**
     * Normal permission necessary to read and write display units for distance, fuel volume,
     * tire pressure and ev battery.
     */
    PERMISSION_READ_DISPLAY_UNITS(
            "android.car.permission.READ_CAR_DISPLAY_UNITS"),
    /**
     * Normal permission necessary to control display units for distance, fuel volume, tire pressure
     * and ev battery. Currently, all display unit properties require both {@code
     * PERMISSION_CONTROL_DISPLAY_UNITS} and {@code PERMISSION_VENDOR_EXTENSION} to be granted in
     * order to write to them.
     */
    PERMISSION_CONTROL_DISPLAY_UNITS(
            "android.car.permission.CONTROL_CAR_DISPLAY_UNITS"),
    /**
     * Signature|Privileged permission necessary to control car's door.
     */
    
    PERMISSION_CONTROL_CAR_DOORS(
            "android.car.permission.CONTROL_CAR_DOORS"),
    /**
     * Signature|Privileged permission necessary to control car's windows.
     */
    
    PERMISSION_CONTROL_CAR_WINDOWS(
            "android.car.permission.CONTROL_CAR_WINDOWS"),
    /**
     * Signature|Privileged permission necessary to control car glove box.
     */
    
    PERMISSION_CONTROL_GLOVE_BOX(
            "android.car.permission.CONTROL_GLOVE_BOX"),
    /**
     * Dangerous permission necessary to read car's seats.
     */
    
    PERMISSION_READ_CAR_SEATS( "android.car.permission.READ_CAR_SEATS"),
    /**
     * Signature|Privileged permission necessary to control car's seats.
     */
    
    PERMISSION_CONTROL_CAR_SEATS(
            "android.car.permission.CONTROL_CAR_SEATS"),
    /**
     * Signature|Privileged permission necessary to control car's mirrors.
     */
    
    PERMISSION_CONTROL_CAR_MIRRORS(
            "android.car.permission.CONTROL_CAR_MIRRORS"),
    /**
     * Signature|Privileged permission necessary to access Car HVAC APIs.
     */
    
    PERMISSION_CONTROL_CAR_CLIMATE(
            "android.car.permission.CONTROL_CAR_CLIMATE"),
    /**
     * Signature|Privileged permission necessary to enable/disable a seat's ability to deploy
     * airbag(s) when triggered (e.g. by a crash).
     */
    
    PERMISSION_CONTROL_CAR_AIRBAGS(
            "android.car.permission.CONTROL_CAR_AIRBAGS"),
    /**
     * Signature|Privileged|VendorPrivileged permission necessary to access restrictive car power
     * management APIs.
     * @hide
     */
    
    PERMISSION_CAR_POWER( "android.car.permission.CAR_POWER"),
    /**
     * Normal permission necessary to read the current power policy or be notified of power policy
     * change.
     */
    PERMISSION_READ_CAR_POWER_POLICY(
            "android.car.permission.READ_CAR_POWER_POLICY"),
    /**
     * Signature|Privileged|VendorPrivileged permission necessary to apply a new power policy.
     * @hide
     */
    
    PERMISSION_CONTROL_CAR_POWER_POLICY(
            "android.car.permission.CONTROL_CAR_POWER_POLICY"),
    /**
     * Signature|Privileged|VendorPrivileged permission necessary to adjust the shutdown process.
     * @hide
     */
    
    PERMISSION_CONTROL_SHUTDOWN_PROCESS(
            "android.car.permission.CONTROL_SHUTDOWN_PROCESS"),
    /**
     * Signature|Privileged permission necessary to access Car PROJECTION system APIs.
     * @hide
     */
    
    PERMISSION_CAR_PROJECTION( "android.car.permission.CAR_PROJECTION"),
    /**
     * Signature|Privileged permission necessary to access projection status.
     * @hide
     */
    
    PERMISSION_CAR_PROJECTION_STATUS(
            "android.car.permission.ACCESS_CAR_PROJECTION_STATUS"),
    /**
     * Signature|Privileged permission necessary to mock vehicle hal for testing.
     * @hide
     * @deprecated mocking vehicle HAL in car service is no longer supported.
     */
    PERMISSION_MOCK_VEHICLE_HAL(
            "android.car.permission.CAR_MOCK_VEHICLE_HAL"),
    /**
     * Signature|Privileged permission necessary to access CarTestService.
     * @hide
     */
    
    PERMISSION_CAR_TEST_SERVICE(
            "android.car.permission.CAR_TEST_SERVICE"),
    /**
     * Signature|Privileged permission necessary to access a car's driving state
     * (E.g. CarDrivingStateService).
     */
    
    PERMISSION_CAR_DRIVING_STATE(
            "android.car.permission.CAR_DRIVING_STATE"),
    /**
     * Dangerous permission necessary to access a car's driving state.
     */
    
    PERMISSION_CAR_DRIVING_STATE_3P(
            "android.car.permission.CAR_DRIVING_STATE_3P"),
    /**
     * Signature permission necessary to access VMS client service.
     *
     * @hide
     */
    PERMISSION_BIND_VMS_CLIENT(
            "android.car.permission.BIND_VMS_CLIENT"),
    /**
     * Signature|Privileged permissions necessary to access VMS publisher APIs.
     *
     * @hide
     */
    
    PERMISSION_VMS_PUBLISHER( "android.car.permission.VMS_PUBLISHER"),
    /**
     * Signature|Privileged permissions necessary to access VMS subscriber APIs.
     *
     * @hide
     */
    
    PERMISSION_VMS_SUBSCRIBER( "android.car.permission.VMS_SUBSCRIBER"),
    /**
     * Signature|Privileged permission necessary to read ultrasonics sensor data.
     */
    
    PERMISSION_READ_ULTRASONICS_SENSOR_DATA(
            "android.car.permission.READ_ULTRASONICS_SENSOR_DATA"),
    /**
     * Signature|Privileged permissions necessary to read diagnostic information, including
     * vendor-specific bits.
     *
     * @hide
     */
    
    PERMISSION_CAR_DIAGNOSTIC_READ_ALL(
            "android.car.permission.CAR_DIAGNOSTICS"),
    /**
     * Signature|Privileged permissions necessary to clear diagnostic information.
     *
     * @hide
     */
    
    PERMISSION_CAR_DIAGNOSTIC_CLEAR(
            "android.car.permission.CLEAR_CAR_DIAGNOSTICS"),
    /**
     * Signature|Privileged permission necessary to configure UX restrictions through
     * {@link CarUxRestrictionsManager}.
     *
     * @hide
     */
    PERMISSION_CAR_UX_RESTRICTIONS_CONFIGURATION(
            "android.car.permission.CAR_UX_RESTRICTIONS_CONFIGURATION"),
    /**
     * Signature|Privileged permission necessary to listen to occupant awareness state
     * {@link OccupantAwarenessManager}.
     *
     * @hide
     */
    
    PERMISSION_READ_CAR_OCCUPANT_AWARENESS_STATE(
            "android.car.permission.READ_CAR_OCCUPANT_AWARENESS_STATE"),
    /**
     * Signature|Privileged permission necessary to access private display id.
     *
     * @hide
     */
    
    ACCESS_PRIVATE_DISPLAY_ID(
            "android.car.permission.ACCESS_PRIVATE_DISPLAY_ID"),
    /**
     * @deprecated Signature|Privileged permission that is not used by any service.
     *
     * @hide
     */
    
    PERMISSION_CONTROL_CAR_OCCUPANT_AWARENESS_SYSTEM(
            "android.car.permission.CONTROL_CAR_OCCUPANT_AWARENESS_SYSTEM"),
    /**
     * Signature|Privileged permissions necessary to clear diagnostic information.
     *
     * @hide
     */
    
    PERMISSION_STORAGE_MONITORING(
            "android.car.permission.STORAGE_MONITORING"),
    /**
     * Signature|Privileged permission necessary to dynamically enable / disable optional car
     * features.
     *
     * @hide
     */
    
    PERMISSION_CONTROL_CAR_FEATURES(
            "android.car.permission.CONTROL_CAR_FEATURES"),
    /**
     * Signature|Privileged permission necessary to be car watchdog clients.
     *
     * @hide
     */
    
    PERMISSION_USE_CAR_WATCHDOG(
            "android.car.permission.USE_CAR_WATCHDOG"),
    /**
     * Signature|Privileged permission necessary to monitor Car input events.
     *
     * @hide
     */
    
    PERMISSION_CAR_MONITOR_INPUT(
            "android.car.permission.CAR_MONITOR_INPUT"),
    /**
     * Signature|Privileged permission necessary to request CarEvsService to launch the special
     * activity to show the camera preview.
     *
     * @hide
     */
    
    PERMISSION_REQUEST_CAR_EVS_ACTIVITY(
            "android.car.permission.REQUEST_CAR_EVS_ACTIVITY"),
    /**
     * Signature|Privileged permission necessary to control the special activity to show the camera
     * preview.
     *
     * @hide
     */
    
    PERMISSION_CONTROL_CAR_EVS_ACTIVITY(
            "android.car.permission.CONTROL_CAR_EVS_ACTIVITY"),
    /**
     * Signature|Privileged permission necessary to use the camera streams via CarEvsService.
     *
     * @hide
     */
    
    PERMISSION_USE_CAR_EVS_CAMERA(
            "android.car.permission.USE_CAR_EVS_CAMERA"),
    /**
     * Signature|Privileged permission necessary to monitor the status of CarEvsService.
     *
     * @hide
     */
    
    PERMISSION_MONITOR_CAR_EVS_STATUS(
            "android.car.permission.MONITOR_CAR_EVS_STATUS"),
    /**
     * Signature|Privileged permission necessary to use the CarTelemetryService.
     *
     * @hide
     */
    
    PERMISSION_USE_CAR_TELEMETRY_SERVICE(
            "android.car.permission.USE_CAR_TELEMETRY_SERVICE"),
    /**
     * Signature|Privileged permission necessary to be able to render template-based UI metadata on
     * behalf of another application.
     *
     * @hide
     */
    
    PERMISSION_TEMPLATE_RENDERER(
            "android.car.permission.TEMPLATE_RENDERER"),
    /**
     * Signature|Privileged permission necessary to set or retrieve car watchdog configurations.
     *
     * @hide
     */
    
    PERMISSION_CONTROL_CAR_WATCHDOG_CONFIG(
            "android.car.permission.CONTROL_CAR_WATCHDOG_CONFIG"),
    /**
     * Signature|Privileged permission necessary to collect metrics from car watchdog.
     *
     * @hide
     */
    
    PERMISSION_COLLECT_CAR_WATCHDOG_METRICS(
            "android.car.permission.COLLECT_CAR_WATCHDOG_METRICS"),
    /**
     * Permission necessary to fetch car CPU information.
     *
     * @hide
     */
    PERMISSION_COLLECT_CAR_CPU_INFO(
            "android.car.permission.COLLECT_CAR_CPU_INFO"),
    /**
     * Signature|Privileged permission necessary to control launching applications in Car.
     *
     * @hide
     */
    
    PERMISSION_CONTROL_CAR_APP_LAUNCH(
            "android.car.permission.CONTROL_CAR_APP_LAUNCH"),
    /**
     * Signature|Privileged permission necessary to setting and getting thread scheduling policy and
     * priority.
     *
     * @hide
     */
    
    PERMISSION_MANAGE_THREAD_PRIORITY(
            "android.car.permission.MANAGE_THREAD_PRIORITY"),
    /**
     * Signature|Privileged permission necessary to modify occupant zone settings. Will be used in
     * {@link CarOccupantZoneManager}.
     *
     * @hide
     */
    
    PERMISSION_MANAGE_OCCUPANT_ZONE(
            "android.car.permission.MANAGE_OCCUPANT_ZONE"),
    /**
     * Normal permission necessary to use remote access.
     */
    PERMISSION_USE_REMOTE_ACCESS(
            "android.car.permission.USE_REMOTE_ACCESS"),
    /**
     * Signature|Privileged permission necessary to control remote access.
     *
     * @hide
     */
    
    PERMISSION_CONTROL_REMOTE_ACCESS(
            "android.car.permission.CONTROL_REMOTE_ACCESS"),
    /**
     * Signature|Privileged permission necessary to control car's steering wheel.
     */
    
    PERMISSION_CONTROL_STEERING_WHEEL(
            "android.car.permission.CONTROL_STEERING_WHEEL"),
    /**
     * Signature|Privileged permission necessary to read ADAS settings information.
     *
     * Examples of settings include the ENABLED properties for the supported ADAS features.
     */
    
    PERMISSION_READ_ADAS_SETTINGS(
            "android.car.permission.READ_ADAS_SETTINGS"),
    /**
     * Signature|Privileged permission necessary to control ADAS settings information.
     *
     * Examples of settings include the ENABLED properties for the supported ADAS features.
     */
    
    PERMISSION_CONTROL_ADAS_SETTINGS(
            "android.car.permission.CONTROL_ADAS_SETTINGS"),
    /**
     * Signature|Privileged permission necessary to read ADAS states information.
     *
     * Examples include the STATE properties for the supported ADAS features.
     */
    
    PERMISSION_READ_ADAS_STATES(
            "android.car.permission.READ_ADAS_STATES"),
    /**
     * Signature|Privileged permission necessary to control ADAS states information.
     *
     * Examples include the STATE properties for the supported ADAS features.
     */
    
    PERMISSION_CONTROL_ADAS_STATES(
            "android.car.permission.CONTROL_ADAS_STATES"),
    /**
     * Signature|Privileged permission necessary to monitor the states of other occupant zones in
     * the car and peer apps (apps that have the same package name as the caller) installed in those
     * zones, and manage the power of those zones.
     *
     * @hide
     */
    
    PERMISSION_MANAGE_REMOTE_DEVICE(
            "android.car.permission.MANAGE_REMOTE_DEVICE"),
    /**
     * Signature|Privileged permission necessary to establish connection and communicate to peer
     * apps (apps that have the same package name as the caller) installed in other occupant zones
     * in the car.
     *
     * @hide
     */
    
    PERMISSION_MANAGE_OCCUPANT_CONNECTION(
            "android.car.permission.MANAGE_OCCUPANT_CONNECTION"),
    /**
     * Signature|Privileged permission to access the mirrored Surface using the Token generated by
     * {@link CarActivityManager#createTaskMirroringToken(int)}.
     *
     * @hide
     */
    
    PERMISSION_ACCESS_MIRRORRED_SURFACE(
            "android.car.permission.ACCESS_MIRRORED_SURFACE"),
    /**
     * Signature|Privileged permission to create the mirroring token for the Display.
     * See {@link CarActivityManager#createDisplayMirroringToken(int)} (int)}.
     *
     * @hide
     */
    
    PERMISSION_MIRROR_DISPLAY(
            "android.car.permission.MIRROR_DISPLAY"),
    /**
     * Signature|Privileged permission necessary to read car's windshield wipers.
     */
    
    PERMISSION_READ_WINDSHIELD_WIPERS(
            "android.car.permission.READ_WINDSHIELD_WIPERS"),
    /**
     * Dangerous permission necessary to read car's windshield wipers.
     */
    
    PERMISSION_READ_WINDSHIELD_WIPERS_3P(
            "android.car.permission.READ_WINDSHIELD_WIPERS_3P"),
    /**
     * Signature|Privileged permission necessary to control car's windshield wipers.
     */
    
    PERMISSION_CONTROL_WINDSHIELD_WIPERS(
            "android.car.permission.CONTROL_WINDSHIELD_WIPERS"),
    /**
     * Signature|Privileged permission necessary to register a {@link SystemUIProxy} that can be
     * used by other apps to manage the system ui and create task views.
     *
     * @hide
     */
    
    PERMISSION_REGISTER_CAR_SYSTEM_UI_PROXY(
            "android.car.permission.REGISTER_CAR_SYSTEM_UI_PROXY"),
    /**
     * Signature|Privileged permission necessary to communicate with the car system ui for creating
     * task views or getting notified about system ui changes.
     * @hide
     */
    
    PERMISSION_MANAGE_CAR_SYSTEM_UI(
            "android.car.permission.MANAGE_CAR_SYSTEM_UI"),
    /**
     * Permission necessary to manage packages that requires launching in automotive compatibility
     * mode.
     * @hide
     */
    
    
    PERMISSION_MANAGE_DISPLAY_COMPATIBILITY(
            "android.car.permission.MANAGE_DISPLAY_COMPATIBILITY"),
    /**
     * Signature|Privileged permission necessary to read state of car airbags.
     */
    
    PERMISSION_READ_CAR_AIRBAGS(
            "android.car.permission.READ_CAR_AIRBAGS"),
    /**
     * Signature|Privileged permission necessary to read state of seat belts.
     */
    
    PERMISSION_READ_CAR_SEAT_BELTS(
            "android.car.permission.READ_CAR_SEAT_BELTS"),
    /**
     * Signature|Privileged permission necessary to read impact sensors information.
     */
    
    PERMISSION_READ_IMPACT_SENSORS(
            "android.car.permission.READ_IMPACT_SENSORS"),
    /**
     * Signature|Privileged permission necessary to read valet mode.
     */
    
    PERMISSION_READ_VALET_MODE(
            "android.car.permission.READ_VALET_MODE"),
    /**
     * Signature|Privileged permission necessary to control valet mode.
     */
    
    PERMISSION_CONTROL_VALET_MODE(
            "android.car.permission.CONTROL_VALET_MODE"),
    /**
     * Signature|Privileged permission necessary to read head up display status (e.g. whether the
     * head up display is enabled).
     */
    
    PERMISSION_READ_HEAD_UP_DISPLAY_STATUS(
            "android.car.permission.READ_HEAD_UP_DISPLAY_STATUS"),
    /**
     * Signature|Privileged permission necessary to control head up display.
     */
    
    PERMISSION_CONTROL_HEAD_UP_DISPLAY(
            "android.car.permission.CONTROL_HEAD_UP_DISPLAY"),
    /**
     * Permission necessary to read persist tethering settings.
     * @hide
     */
    
    
    PERMISSION_READ_PERSIST_TETHERING_SETTINGS(
            "android.car.permission.READ_PERSIST_TETHERING_SETTINGS"),
    /**
     * Permission necessary to bind with app card providers.
     * @hide
     */
    
    
    PERMISSION_BIND_APP_CARD_PROVIDER(
            "android.car.permission.BIND_APP_CARD_PROVIDER"),
    /**
     * Signature permission necessary to record vehicle properties.
     * @hide
     */
    
    
    PERMISSION_RECORD_VEHICLE_PROPERTIES(
            "android.car.permission.RECORD_VEHICLE_PROPERTIES"),
    /**
     * Signature permission necessary to inject vehicle properties for testing purposes.
     * @hide
     */
    
    
    PERMISSION_INJECT_VEHICLE_PROPERTIES(
            "android.car.permission.INJECT_VEHICLE_PROPERTIES");

    const CarPermission(this.androidName);

    final String androidName;

    static CarPermission forName(String name) {
      return CarPermission.values.firstWhere((v) => v.name == name);
    }
}
