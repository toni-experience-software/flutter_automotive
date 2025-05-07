import 'dart:io';

import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:flutter_automotive/model/models.dart';

class VehicleTypeProperties {
  VehicleTypeProperties({
    required this.read,
    required this.readPrivileged,
    required this.write,
    required this.writePrivileged,
    required this.docs,
  });

  final bool read;
  final bool readPrivileged;
  final bool write;
  final bool writePrivileged;
  final String docs;

  @override
  String toString() {
    return 'VehicleTypeProperties{read: $read, readPrivileged: $readPrivileged, write: $write, writePrivileged: $writePrivileged}';
  }
}

class VehicleTypeDocParser {
  VehicleTypeDocParser._(this._typeProps);

  static const String kReadDoc = "VEHICLE_PROPERTY_ACCESS_READ";
  static const String kWriteDoc = "VEHICLE_PROPERTY_ACCESS_WRITE";
  static const String kReadWriteDoc = "VEHICLE_PROPERTY_ACCESS_READ_WRITE";

  final Map<VehicleProperty, VehicleTypeProperties> _typeProps;

  static bool _needsPrivilegedPermission(String part) {
    if (part.contains(" or ")) {
      return (part.contains("Normal") ||
                  part.contains("Dangerous")) ==
              false &&
          part.contains("Signature|Privileged");
    } else if (part.contains(" and ")) {
      return part.contains("Signature|Privileged");
    } else {
      return part.contains("Normal") == false &&
          part.contains("Dangerous") == false &&
          part.contains("Signature|Privileged");
    }
  }

  static Future<VehicleTypeDocParser> init(File modelFile) async {
    final res = await resolveFile2(path: modelFile.path);
    if (res case ResolvedUnitResult(:final libraryElement2)) {
      final vals = libraryElement2.enums.first;
      final typeProps = <VehicleProperty, VehicleTypeProperties>{};
      for (final val in vals.constants2) {
        if (val.documentationComment case final comment?) {
          try {
            final type = VehicleProperty.forName(val.displayName);

            final lis = comment
                .split("<li>")
                .where((l) => l.contains("permission"))
                .map((e) => e.replaceAll("\n", " ").split(" ").where((e) => e.isNotEmpty).join(" "));
            final readLis = lis.where((l) => l.contains("read"));
            final writeLis = lis.where((l) => l.contains("write"));

            typeProps[type] = VehicleTypeProperties(
              read:
                  comment.contains(kReadDoc) || comment.contains(kReadWriteDoc),
              readPrivileged: readLis.any(_needsPrivilegedPermission),
              write:
                  comment.contains(kWriteDoc) ||
                  comment.contains(kReadWriteDoc),
              writePrivileged: writeLis.any(_needsPrivilegedPermission),
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

  bool needsGetter(VehicleProperty type, bool privileged) {
    return switch (_typeProps[type]) {
      null => false,
      final props => props.read && props.readPrivileged == privileged,
    };
  }

  bool needsSetter(VehicleProperty type, bool privileged) {
    return switch (_typeProps[type]) {
      null => false,
      final props => props.write && props.writePrivileged == privileged,
    };
  }

  String? getDocs(VehicleProperty type) {
    return _typeProps[type]?.docs;
  }
}
