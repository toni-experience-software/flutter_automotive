import 'package:flutter_automotive/model/models.dart';
import 'package:flutter_automotive/src/flutter_automotive_method_channel.dart';
import 'package:flutter_automotive/src/flutter_automotive_platform_interface.dart';
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
  PropertyStreamData<T> subscribeProperty<T>(int propertyId, int areaId,
      [SensorUpdateRate updateRate = SensorUpdateRates.onChange]) {
    return PropertyStreamData(
      stream: Stream.empty(),
      onUnsubscribe: () {},
    );
  }

  @override
  Future<bool> arePermissionsGranted(List<CarPermissions> permissions) async =>
      false;

  @override
  Future<void> requestPermissions(List<CarPermissions> permissions) async {}
}

void main() {
  final FlutterAutomotivePlatform initialPlatform =
      FlutterAutomotivePlatform.instance;

  test('$MethodChannelFlutterAutomotive is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterAutomotive>());
  });
}
