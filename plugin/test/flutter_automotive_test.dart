import 'package:flutter_automotive/src/flutter_automotive_method_channel.dart';
import 'package:flutter_automotive/src/flutter_automotive_platform_interface.dart';
import 'package:flutter_automotive/src/messages.g.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterAutomotivePlatform
    with MockPlatformInterfaceMixin
    implements FlutterAutomotivePlatform {

  @override
  Future getProperty(int propertyId, int areaId) => Future.value('42');
  
  @override
  Future<void> setProperty(int propertyId, int areaId, value) async {}

  @override
  Future<bool> isPermissionGranted(CarPermissions permission) async => false;

  @override
  Future<void> requestPermission(CarPermissions permission) async {}
}

void main() {
  final FlutterAutomotivePlatform initialPlatform = FlutterAutomotivePlatform.instance;

  test('$MethodChannelFlutterAutomotive is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterAutomotive>());
  });
}
