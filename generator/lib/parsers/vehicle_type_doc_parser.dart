import 'dart:io';

import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:flutter_automotive_models/flutter_automotive_models.dart';

class VehicleTypeProperties {
  VehicleTypeProperties({
    required this.read,
    required this.write,
    required this.docs,
  });

  final bool read;
  final bool write;
  final String docs;
}

class VehicleTypeDocParser {
  VehicleTypeDocParser._(this._typeProps);

  static const String kReadDoc = "VEHICLE_PROPERTY_ACCESS_READ";
  static const String kWriteDoc = "VEHICLE_PROPERTY_ACCESS_WRITE";
  static const String kReadWriteDoc = "VEHICLE_PROPERTY_ACCESS_READ_WRITE";

  final Map<VehicleProperty, VehicleTypeProperties> _typeProps;

  static Future<VehicleTypeDocParser> init(File modelFile) async {
    final res = await resolveFile2(path: modelFile.path);
    if (res case ResolvedUnitResult(:final libraryElement2)) {
      final vals = libraryElement2.enums.first;
      final typeProps = <VehicleProperty, VehicleTypeProperties>{};
      for (final val in vals.constants2) {
        if (val.documentationComment case final comment?) {
          try {
            final type = VehicleProperty.forName(val.displayName);
            typeProps[type] = VehicleTypeProperties(
              read: comment.contains(kReadDoc) || comment.contains(kReadWriteDoc),
              write: comment.contains(kWriteDoc) || comment.contains(kReadWriteDoc),
              docs: comment,
            );
          } catch (_) {
            print("Error parsing vehicle property type: ${val.displayName}");
          }
        }
      }
      return VehicleTypeDocParser._(typeProps);
    } else {
      throw Exception("Failed to resolve file: ${modelFile.path}");
    }
  }

  bool needsGetter(VehicleProperty type) {
    return _typeProps[type]?.read ?? false;
  }

  bool needsSetter(VehicleProperty type) {
    return _typeProps[type]?.write ?? false;
  }

  String? getDocs(VehicleProperty type) {
    return _typeProps[type]?.docs;
  }
}
