// ignore_for_file: non_constant_identifier_names, unnecessary_type_check
library;

import 'package:flutter_automotive/model/sensor_update_rates.dart';
import 'package:flutter_automotive/src/flutter_automotive_platform_interface.dart';
import 'package:flutter_automotive/model/property_stream.dart';
import 'package:flutter_automotive/src/vehicle_datasource.dart';

class VehiclePropertyDatasourceImpl extends VehiclePropertyDatasource {
  VehiclePropertyDatasourceImpl({FlutterAutomotivePlatform? instance}) : 
    _platform = instance ?? FlutterAutomotivePlatform.instance;

  final FlutterAutomotivePlatform _platform;

  @override
  Future<dynamic> getProperty(int propertyId, int areaId) async {
    return await _platform.getProperty(propertyId, areaId);
  }

  @override
  Future<void> setProperty(int propertyId, int areaId, value) async {
    return await _platform.setProperty(propertyId, areaId, value);
  }

  @override
  PropertyStreamData<T> listenProperty<T>(int propertyId, int areaId, SensorUpdateRate rate) {
    return _platform.subscribeProperty<T>(propertyId, areaId, rate);
  }
}
