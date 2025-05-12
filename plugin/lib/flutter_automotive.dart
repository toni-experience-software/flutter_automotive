import 'package:flutter_automotive/model/models.dart';
import 'package:flutter_automotive/src/flutter_automotive_platform_interface.dart';
import 'package:flutter_automotive/src/vehicle_datasource_impl.dart';
import 'package:flutter_automotive/src/vehicle_repository.dart';

export 'model/models.dart';

enum VehiclePropertyPermissionScope {
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

  /// Subscribes to updates for a specified vehicle property.
  ///
  /// [propertyId] - The ID of the property to subscribe to.
  /// [areaId] - The area ID for which the property updates are requested.
  /// [updateRate] - The rate at which updates are received. Defaults to [SensorUpdateRates.onChange].
  ///
  /// Returns a [PropertyStreamData] stream that emits updates for the specified property.
  PropertyStreamData<T> subscribeProperty<T>(int propertyId, int areaId,
      [SensorUpdateRate updateRate = SensorUpdateRates.onChange]) {
    return _platform.subscribeProperty<T>(propertyId, areaId, updateRate);
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
      VehicleProperty property, VehiclePropertyPermissionScope scope) async {
    final permissions = switch (scope) {
      VehiclePropertyPermissionScope.read => property.readPermissions,
      VehiclePropertyPermissionScope.write => property.writePermissions,
      VehiclePropertyPermissionScope.both => [
          ...property.readPermissions,
          ...property.writePermissions
        ],
    }
        .toList();
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
      VehicleProperty property, VehiclePropertyPermissionScope scope) async {
    final permissions = switch (scope) {
      VehiclePropertyPermissionScope.read => property.readPermissions,
      VehiclePropertyPermissionScope.write => property.writePermissions,
      VehiclePropertyPermissionScope.both => [
          ...property.readPermissions,
          ...property.writePermissions
        ],
    }
        .toList();
    return await _platform.requestPermissions(permissions);
  }
}
