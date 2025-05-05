import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_automotive_method_channel.dart';

abstract class FlutterAutomotivePlatform extends PlatformInterface {
  /// Constructs a FlutterAutomotivePlatform.
  FlutterAutomotivePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterAutomotivePlatform _instance = MethodChannelFlutterAutomotive();

  /// The default instance of [FlutterAutomotivePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterAutomotive].
  static FlutterAutomotivePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterAutomotivePlatform] when
  /// they register themselves.
  static set instance(FlutterAutomotivePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
