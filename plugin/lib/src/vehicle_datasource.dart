// ignore_for_file: non_constant_identifier_names
library;

abstract class VehiclePropertyDatasource {
  Future<String> getPropertySTRING(int propertyId, int areaId);
  Future<void> setPropertySTRING(int propertyId, int areaId, String value);
  Future<bool> getPropertyBOOLEAN(int propertyId, int areaId);
  Future<void> setPropertyBOOLEAN(int propertyId, int areaId, bool value);
  Future<int> getPropertyINT32(int propertyId, int areaId);
  Future<void> setPropertyINT32(int propertyId, int areaId, int value);
  Future<List<int>> getPropertyINT32_VEC(int propertyId, int areaId);
  Future<void> setPropertyINT32_VEC(
    int propertyId,
    int areaId,
    List<int> value,
  );
  Future<int> getPropertyINT64(int propertyId, int areaId);
  Future<void> setPropertyINT64(int propertyId, int areaId, int value);
  Future<List<int>> getPropertyINT64_VEC(int propertyId, int areaId);
  Future<void> setPropertyINT64_VEC(
    int propertyId,
    int areaId,
    List<int> value,
  );
  Future<double> getPropertyFLOAT(int propertyId, int areaId);
  Future<void> setPropertyFLOAT(int propertyId, int areaId, double value);
  Future<List<double>> getPropertyFLOAT_VEC(int propertyId, int areaId);
  Future<void> setPropertyFLOAT_VEC(
    int propertyId,
    int areaId,
    List<double> value,
  );
  Future<List<int>> getPropertyBYTES(int propertyId, int areaId);
  Future<void> setPropertyBYTES(int propertyId, int areaId, List<int> value);
  Future<dynamic> getPropertyMIXED(int propertyId, int areaId);
  Future<void> setPropertyMIXED(int propertyId, int areaId, dynamic value);
}
