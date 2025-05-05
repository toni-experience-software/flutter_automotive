import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_automotive/flutter_automotive.dart';
import 'package:flutter_automotive/flutter_automotive_platform_interface.dart';
import 'package:flutter_automotive/flutter_automotive_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterAutomotivePlatform
    with MockPlatformInterfaceMixin
    implements FlutterAutomotivePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterAutomotivePlatform initialPlatform = FlutterAutomotivePlatform.instance;

  test('$MethodChannelFlutterAutomotive is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterAutomotive>());
  });

  test('getPlatformVersion', () async {
    FlutterAutomotive flutterAutomotivePlugin = FlutterAutomotive();
    MockFlutterAutomotivePlatform fakePlatform = MockFlutterAutomotivePlatform();
    FlutterAutomotivePlatform.instance = fakePlatform;

    expect(await flutterAutomotivePlugin.getPlatformVersion(), '42');
  });
}
