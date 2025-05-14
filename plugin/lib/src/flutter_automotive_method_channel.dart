import 'dart:async';

import 'package:flutter_automotive/model/models.dart';
import 'package:flutter_automotive/model/property_stream_subscription.dart';
import 'package:flutter_automotive/src/flutter_automotive_platform_interface.dart';
import 'package:flutter_automotive/src/messages.g.dart';

class MethodChannelFlutterAutomotive extends FlutterAutomotivePlatform {
  MethodChannelFlutterAutomotive() {
    _handleEvent();
  }

  final FlutterAutomotiveApi _api = FlutterAutomotiveApi();
  final Map<(int, int), StreamController<dynamic>> _propertyStreams = {};

  void _handleEvent() {
    final events = receiveEvents();
    events.listen((event) {
      final controller = _propertyStreams[(event.propertyId, event.areaId)];
      controller?.add(event.value);
    });
  }

  @override
  Future<dynamic> getProperty(int propertyId, int areaId) async {
    return _api.getProperty(propertyId, areaId);
  }

  @override
  Future<void> setProperty(int propertyId, int areaId, value) {
    return _api.setProperty(propertyId, areaId, value);
  }

  @override
  StreamSubscription<T> subscribeProperty<T>(int propertyId, int areaId,
      SensorUpdateRate updateRate, Function(T) onData) {
    final controller = StreamController<T>();
    _propertyStreams[(propertyId, areaId)] = controller;
    final rate = updateRate.clamp(0.0, 100.0);
    _api.subscribeProperty(propertyId, areaId, rate);
    return PropertyStreamSubscription(
      stream: controller.stream,
      onData: onData,
      onCancel: () async {
        await _propertyStreams.remove((propertyId, areaId))?.close();
        await _api.unsubscribeProperty(propertyId, areaId);
      },
    );
  }

  @override
  Future<bool> arePermissionsGranted(List<CarPermissions> permissions) async {
    return await _api.arePermissionsGranted([
      for (final permission in permissions) permission.androidName,
    ]);
  }

  @override
  Future<void> requestPermissions(List<CarPermissions> permissions) async {
    return await _api.requestPermissions([
      for (final permission in permissions) permission.androidName,
    ]);
  }
}
