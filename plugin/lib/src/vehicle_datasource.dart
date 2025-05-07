// ignore_for_file: non_constant_identifier_names, unnecessary_type_check
library;

import 'package:flutter_automotive/flutter_automotive.dart';

abstract class VehiclePropertyDatasource {
  Future<dynamic> getProperty(int propertyId, int areaId);
  Future<void> setProperty(int propertyId, int areaId, dynamic value);
  PropertyStreamData<T> listenProperty<T>(
    int propertyId,
    int areaId,
    SensorUpdateRate rate,
  );
  Future<String> getPropertyString(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is String) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyString(
    int propertyId,
    int areaId,
    String value,
  ) async {
    return await setProperty(propertyId, areaId, value);
  }

  PropertyStreamData<String> listenPropertyString(
    int propertyId,
    int areaId,
    SensorUpdateRate rate,
  ) {
    return listenProperty<String>(propertyId, areaId, rate);
  }

  Future<bool> getPropertyBoolean(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is bool) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyBoolean(
    int propertyId,
    int areaId,
    bool value,
  ) async {
    return await setProperty(propertyId, areaId, value);
  }

  PropertyStreamData<bool> listenPropertyBoolean(
    int propertyId,
    int areaId,
    SensorUpdateRate rate,
  ) {
    return listenProperty<bool>(propertyId, areaId, rate);
  }

  Future<int> getPropertyInt32(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is int) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyInt32(int propertyId, int areaId, int value) async {
    return await setProperty(propertyId, areaId, value);
  }

  PropertyStreamData<int> listenPropertyInt32(
    int propertyId,
    int areaId,
    SensorUpdateRate rate,
  ) {
    return listenProperty<int>(propertyId, areaId, rate);
  }

  Future<List<int>> getPropertyInt32Vec(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is List<int>) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyInt32Vec(
    int propertyId,
    int areaId,
    List<int> value,
  ) async {
    return await setProperty(propertyId, areaId, value);
  }

  PropertyStreamData<List<int>> listenPropertyInt32Vec(
    int propertyId,
    int areaId,
    SensorUpdateRate rate,
  ) {
    return listenProperty<List<int>>(propertyId, areaId, rate);
  }

  Future<int> getPropertyInt64(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is int) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyInt64(int propertyId, int areaId, int value) async {
    return await setProperty(propertyId, areaId, value);
  }

  PropertyStreamData<int> listenPropertyInt64(
    int propertyId,
    int areaId,
    SensorUpdateRate rate,
  ) {
    return listenProperty<int>(propertyId, areaId, rate);
  }

  Future<List<int>> getPropertyInt64Vec(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is List<int>) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyInt64Vec(
    int propertyId,
    int areaId,
    List<int> value,
  ) async {
    return await setProperty(propertyId, areaId, value);
  }

  PropertyStreamData<List<int>> listenPropertyInt64Vec(
    int propertyId,
    int areaId,
    SensorUpdateRate rate,
  ) {
    return listenProperty<List<int>>(propertyId, areaId, rate);
  }

  Future<double> getPropertyFloat(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is double) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyFloat(
    int propertyId,
    int areaId,
    double value,
  ) async {
    return await setProperty(propertyId, areaId, value);
  }

  PropertyStreamData<double> listenPropertyFloat(
    int propertyId,
    int areaId,
    SensorUpdateRate rate,
  ) {
    return listenProperty<double>(propertyId, areaId, rate);
  }

  Future<List<double>> getPropertyFloatVec(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is List<double>) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyFloatVec(
    int propertyId,
    int areaId,
    List<double> value,
  ) async {
    return await setProperty(propertyId, areaId, value);
  }

  PropertyStreamData<List<double>> listenPropertyFloatVec(
    int propertyId,
    int areaId,
    SensorUpdateRate rate,
  ) {
    return listenProperty<List<double>>(propertyId, areaId, rate);
  }

  Future<List<int>> getPropertyBytes(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is List<int>) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyBytes(
    int propertyId,
    int areaId,
    List<int> value,
  ) async {
    return await setProperty(propertyId, areaId, value);
  }

  PropertyStreamData<List<int>> listenPropertyBytes(
    int propertyId,
    int areaId,
    SensorUpdateRate rate,
  ) {
    return listenProperty<List<int>>(propertyId, areaId, rate);
  }

  Future<dynamic> getPropertyMixed(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is dynamic) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyMixed(
    int propertyId,
    int areaId,
    dynamic value,
  ) async {
    return await setProperty(propertyId, areaId, value);
  }

  PropertyStreamData<dynamic> listenPropertyMixed(
    int propertyId,
    int areaId,
    SensorUpdateRate rate,
  ) {
    return listenProperty<dynamic>(propertyId, areaId, rate);
  }
}
