import 'dart:async';

import 'package:flutter_automotive/model/models.dart';
import 'package:flutter_automotive/src/flutter_automotive_platform_interface.dart';
import 'package:flutter_automotive/src/vehicle_datasource_impl.dart';
import 'package:flutter_automotive/src/vehicle_repository.dart';

export 'model/models.dart';

enum CarPermissionScope {
  read,
  write,
  both,
}

class FlutterAutomotive {
  FlutterAutomotive([FlutterAutomotivePlatform? platform])
      : _platform = platform ?? FlutterAutomotivePlatform.instance,
        _repository = VehiclePropertyRepository(VehiclePropertyDatasourceImpl(
            instance: platform ?? FlutterAutomotivePlatform.instance));

  final FlutterAutomotivePlatform _platform;
  final VehiclePropertyRepository _repository;

  VehiclePropertyRepository get properties => _repository;

  /// Retrieves the value of a specified vehicle property.
  ///
  /// [property] - The vehicle property to retrieve.
  /// [areaId] - The area ID for which the property value is requested. Defaults to 0.
  ///
  /// Returns a [Future] that resolves to the value of the requested property.
  Future<dynamic> getProperty(VehicleProperty property,
      {int areaId = 0}) async {
    return await _platform.getProperty(property.id, areaId);
  }

  /// Sets the value of a specified vehicle property.
  ///
  /// [property] - The vehicle property to set.
  /// [value] - The value to assign to the property.
  /// [areaId] - The area ID for which the property value is being set. Defaults to 0.
  ///
  /// Returns a [Future] that completes when the property value is successfully set.
  Future<void> setProperty(VehicleProperty property, dynamic value,
      {int areaId = 0}) async {
    return await _platform.setProperty(property.id, value, areaId);
  }

  /// Subscribes to updates for a specific vehicle property.
  ///
  /// This method allows you to listen to changes for a given vehicle property
  /// by subscribing to its updates. You can specify the property ID, area ID,
  /// and the desired update rate.
  ///
  /// - [propertyId]: The unique identifier of the vehicle property to subscribe to.
  /// - [areaId]: The specific area ID for which updates are requested. Use this to
  ///   target a particular area of the vehicle.
  /// - [onData]: The function that is called when updates are received.
  /// - [updateRate] The rate at which updates are received. Defaults to [SensorUpdateRates.onChange].
  ///
  /// Returns a [StreamSubscription] stream that provides real-time updates for
  /// the specified property and area.
  ///
  /// Cancel the subscription when you no longer need updates to avoid memory leaks.
  StreamSubscription<T> subscribeProperty<T>(
    int propertyId,
    int areaId,
    Function(T) onData, [
    SensorUpdateRate updateRate = SensorUpdateRates.onChange,
  ]) {
    return _platform.subscribeProperty<T>(
      propertyId,
      areaId,
      updateRate,
      onData,
    );
  }

  /// Checks if the specified car permission is granted.
  ///
  /// [permission] - The car permission to check.
  ///
  /// Returns a [Future] that resolves to `true` if the permission is granted,
  /// otherwise `false`.
  Future<bool> isPermissionGranted(CarPermissions permission) async {
    return await _platform.arePermissionsGranted([permission]);
  }

  /// Requests the specified car permission.
  ///
  /// [permission] - The car permission to request.
  ///
  /// Returns a [Future] that completes when the permission request process
  /// is finished.
  Future<void> requestPermission(CarPermissions permission) async {
    return await _platform.requestPermissions([permission]);
  }

  /// Checks if the permissions for a specified vehicle property are granted.
  ///
  /// [property] - The vehicle property for which permissions are being checked.
  /// [scope] - The scope of permissions to check (read, write, or both).
  ///
  /// Returns a [Future] that resolves to `true` if all the required permissions
  /// for the specified scope are granted, otherwise `false`.
  Future<bool> arePropertyPermissionsGranted(
      VehicleProperty property, CarPermissionScope scope) async {
    final permissions = {
      if (scope case CarPermissionScope.read || CarPermissionScope.both)
        ...property.readPermissions,
      if (scope case CarPermissionScope.write || CarPermissionScope.both)
        ...property.writePermissions,
    }.toList();
    return await _platform.arePermissionsGranted(permissions);
  }

  /// Requests permissions for a specified vehicle property.
  ///
  /// [property] - The vehicle property for which permissions are being requested.
  /// [scope] - The scope of permissions to request (read, write, or both).
  ///
  /// Returns a [Future] that completes when the permission request process
  /// is finished.
  Future<void> requestPropertyPermissions(
      VehicleProperty property, CarPermissionScope scope) async {
    final permissions = {
      if (scope case CarPermissionScope.read || CarPermissionScope.both)
        ...property.readPermissions,
      if (scope case CarPermissionScope.write || CarPermissionScope.both)
        ...property.writePermissions,
    }.toList();
    return await _platform.requestPermissions(permissions);
  }
}
