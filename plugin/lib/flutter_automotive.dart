import 'package:flutter_automotive/src/vehicle_datasource_impl.dart';
import 'package:flutter_automotive/src/vehicle_repository.dart';

class FlutterAutomotive extends VehiclePropertyRepository {
  FlutterAutomotive() : super(VehiclePropertyDatasourceImpl());
}
