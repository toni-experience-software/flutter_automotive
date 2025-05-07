import 'package:flutter_automotive/src/flutter_automotive_platform_interface.dart';
import 'package:flutter_automotive/src/messages.g.dart';
import 'package:flutter_automotive/src/vehicle_datasource_impl.dart';
import 'package:flutter_automotive/src/vehicle_repository.dart';

export 'src/messages.g.dart' show CarPermissions;
export 'model/property_stream.dart';
export 'model/vehicle_area.dart';
export 'model/vehicle_property.dart';
export 'model/vehicle_property_types.dart';

class FlutterAutomotive {
  FlutterAutomotive([FlutterAutomotivePlatform? platform])
    : _platform = platform ?? FlutterAutomotivePlatform.instance,
      _repository = VehiclePropertyRepository(VehiclePropertyDatasourceImpl(instance: platform ?? FlutterAutomotivePlatform.instance));

  final FlutterAutomotivePlatform _platform;
  final VehiclePropertyRepository _repository;

  VehiclePropertyRepository get properties => _repository;

  /// Checks if the specified car permission is granted.
  ///
  /// [permission] - The car permission to check.
  /// 
  /// Returns a [Future] that resolves to `true` if the permission is granted,
  /// otherwise `false`.
  Future<bool> isPermissionGranted(CarPermissions permission) async {
    return await _platform.isPermissionGranted(permission);
  }
  
  /// Requests the specified car permission.
  ///
  /// [permission] - The car permission to request.
  ///
  /// Returns a [Future] that completes when the permission request process
  /// is finished.
  Future<void> requestPermission(CarPermissions permission) async {
    return await _platform.requestPermission(permission);
  }
}
