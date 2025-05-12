import 'package:flutter_automotive/src/flutter_automotive_method_channel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'test_api.g.dart';

class _TestApi implements TestHostFlutterAutomotiveApi {
  @override
  Future<dynamic> getProperty(int propertyId, int areaId) async {
    return 42;
  }

  @override
  Future<void> setProperty(int propertyId, int areaId, value) async {}

  @override
  bool isPermissionGranted(String permission) => false;

  @override
  void requestPermission(String permission) {}
  
  @override
  void subscribeProperty(int propertyId, int areaId, double updateRate) {}
  
  @override
  void unsubscribeProperty(int propertyId, int areaId) {}
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelFlutterAutomotive platform = MethodChannelFlutterAutomotive();

  late _TestApi api;

  setUp(() {
    api = _TestApi();
    TestHostFlutterAutomotiveApi.setUp(api);
  });

  test('getAppInfo', () async {
    expect(await platform.getProperty(1, 2), 42);
  });
}
