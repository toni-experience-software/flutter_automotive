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
  dynamic getProperty(int propertyId, int areaId);

  @async
  void setProperty(int propertyId, int areaId, dynamic value);
}
