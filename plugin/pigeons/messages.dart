// ignore_for_file: constant_identifier_names

import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/src/messages.g.dart',
  dartTestOut: 'test/test_api.g.dart',
  kotlinOut:
      'android/src/main/kotlin/com/wearetoni/flutter_automotive/Messages.g.kt',
  kotlinOptions: KotlinOptions(
    package: 'com.wearetoni.flutter_automotive',
  ),
  copyrightHeader: 'pigeons/copyright.txt',
  dartPackageName: 'flutter_automotive',
))

enum CarPermissions {
  PERMISSION_CAR_CONTROL_AUDIO_SETTINGS,
  PERMISSION_CAR_CONTROL_AUDIO_VOLUME,
  PERMISSION_CAR_INFO,
  PERMISSION_CAR_NAVIGATION_MANAGER,
  PERMISSION_CONTROL_CAR_ENERGY,
  PERMISSION_CONTROL_DISPLAY_UNITS,
  PERMISSION_CONTROL_INTERIOR_LIGHTS,
  PERMISSION_ENERGY,
  PERMISSION_ENERGY_PORTS,
  PERMISSION_EXTERIOR_ENVIRONMENT,
  PERMISSION_IDENTIFICATION,
  PERMISSION_POWERTRAIN,
  PERMISSION_PRIVILEGED_CAR_INFO,
  PERMISSION_READ_CAR_POWER_POLICY,
  PERMISSION_READ_DISPLAY_UNITS,
  PERMISSION_READ_INTERIOR_LIGHTS,
  PERMISSION_READ_STEERING_STATE,
  PERMISSION_SPEED,
  PERMISSION_USE_REMOTE_ACCESS,
}

@HostApi(dartHostTestHandler: 'TestHostFlutterAutomotiveApi')
abstract class FlutterAutomotiveApi {
  @async
  Object? getProperty(int propertyId, int areaId);

  @async
  void setProperty(int propertyId, int areaId, Object? value);

  bool isPermissionGranted(CarPermissions permission);

  void requestPermission(CarPermissions permission);
}
