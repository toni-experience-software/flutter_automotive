
import 'flutter_automotive_platform_interface.dart';

class FlutterAutomotive {
  Future<String?> getPlatformVersion() {
    return FlutterAutomotivePlatform.instance.getPlatformVersion();
  }
}
