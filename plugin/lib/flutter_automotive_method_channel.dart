import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_automotive_platform_interface.dart';

/// An implementation of [FlutterAutomotivePlatform] that uses method channels.
class MethodChannelFlutterAutomotive extends FlutterAutomotivePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_automotive');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
