import 'dart:async';

import 'package:flutter_automotive/model/models.dart';
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
    events.listen(
      (event) {
        final controller = _propertyStreams[(event.propertyId, event.areaId)];
        controller?.add(event.value);
      }
    );
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
  PropertyStreamData<T> subscribeProperty<T>(int propertyId, int areaId, SensorUpdateRate updateRate) {
    final controller = StreamController<T>();
    _propertyStreams[(propertyId, areaId)] = controller;
    final rate = updateRate.clamp(0.0, 100.0);
    _api.subscribeProperty(propertyId, areaId, rate);
    return PropertyStreamData<T>(
      stream: controller.stream,
      onUnsubscribe: () {
        _api.unsubscribeProperty(propertyId, areaId);
        _propertyStreams.remove((propertyId, areaId))?.close();
      },
    );
  }
  
  @override
  Future<bool> arePermissionsGranted(List<CarPermissions> permissions) async {
    return await _api.arePermissionsGranted([
      for (final permission in permissions)
        permission.androidName,
    ]);
  }
  
  @override
  Future<void> requestPermissions(List<CarPermissions> permissions) async {
    return await _api.requestPermissions([
      for (final permission in permissions)
        permission.androidName,
    ]);
  }
}
