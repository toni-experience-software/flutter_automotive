import 'package:flutter_automotive/src/flutter_automotive_platform_interface.dart';
import 'package:flutter_automotive/src/messages.g.dart';

class MethodChannelFlutterAutomotive extends FlutterAutomotivePlatform {
  final FlutterAutomotiveApi _api = FlutterAutomotiveApi();
  
  @override
  Future<dynamic> getProperty(int propertyId, int areaId) async {
    return _api.getProperty(propertyId, areaId);
  }
  
  @override
  Future<void> setProperty(int propertyId, int areaId, value) {
    return _api.setProperty(propertyId, areaId, value);
  }
}
