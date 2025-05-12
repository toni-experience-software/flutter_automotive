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

@HostApi(dartHostTestHandler: 'TestHostFlutterAutomotiveApi')
abstract class FlutterAutomotiveApi {
  @async
  Object? getProperty(int propertyId, int areaId);

  @async
  void setProperty(int propertyId, int areaId, Object? value);

  void subscribeProperty(int propertyId, int areaId, double updateRate);

  void unsubscribeProperty(int propertyId, int areaId);

  bool isPermissionGranted(String permission);

  void requestPermission(String permission);
}

class PropertyUpdateEvent {
  const PropertyUpdateEvent({
    required this.value,
    required this.propertyId,
    required this.areaId,
  });

  final Object? value;
  final int propertyId;
  final int areaId;
}

@EventChannelApi()
abstract class FlutterAutomotiveEventApi {
  PropertyUpdateEvent receiveEvents();
}
