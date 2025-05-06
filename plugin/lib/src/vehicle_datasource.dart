// ignore_for_file: non_constant_identifier_names, unnecessary_type_check
library;

abstract class VehiclePropertyDatasource {
  Future<dynamic> getProperty(int propertyId, int areaId);
  Future<void> setProperty(int propertyId, int areaId, dynamic value);
  Future<String> getPropertySTRING(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is String) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertySTRING(
    int propertyId,
    int areaId,
    String value,
  ) async {
    return await setProperty(propertyId, areaId, value);
  }

  Future<bool> getPropertyBOOLEAN(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is bool) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyBOOLEAN(
    int propertyId,
    int areaId,
    bool value,
  ) async {
    return await setProperty(propertyId, areaId, value);
  }

  Future<int> getPropertyINT32(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is int) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyINT32(int propertyId, int areaId, int value) async {
    return await setProperty(propertyId, areaId, value);
  }

  Future<List<int>> getPropertyINT32_VEC(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is List<int>) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyINT32_VEC(
    int propertyId,
    int areaId,
    List<int> value,
  ) async {
    return await setProperty(propertyId, areaId, value);
  }

  Future<int> getPropertyINT64(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is int) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyINT64(int propertyId, int areaId, int value) async {
    return await setProperty(propertyId, areaId, value);
  }

  Future<List<int>> getPropertyINT64_VEC(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is List<int>) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyINT64_VEC(
    int propertyId,
    int areaId,
    List<int> value,
  ) async {
    return await setProperty(propertyId, areaId, value);
  }

  Future<double> getPropertyFLOAT(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is double) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyFLOAT(
    int propertyId,
    int areaId,
    double value,
  ) async {
    return await setProperty(propertyId, areaId, value);
  }

  Future<List<double>> getPropertyFLOAT_VEC(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is List<double>) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyFLOAT_VEC(
    int propertyId,
    int areaId,
    List<double> value,
  ) async {
    return await setProperty(propertyId, areaId, value);
  }

  Future<List<int>> getPropertyBYTES(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is List<int>) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyBYTES(
    int propertyId,
    int areaId,
    List<int> value,
  ) async {
    return await setProperty(propertyId, areaId, value);
  }

  Future<dynamic> getPropertyMIXED(int propertyId, int areaId) async {
    final result = await getProperty(propertyId, areaId);
    if (result is dynamic) {
      return result;
    } else {
      throw Exception('Return type mismatch');
    }
  }

  Future<void> setPropertyMIXED(
    int propertyId,
    int areaId,
    dynamic value,
  ) async {
    return await setProperty(propertyId, areaId, value);
  }
}
