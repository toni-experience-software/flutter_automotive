import 'dart:io';

import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:generator/input/vehicle_property.dart';

class VehicleTypeProperties {
  VehicleTypeProperties({
    required this.name,
    required this.id,
    required this.read,
    required this.readPrivileged,
    required this.write,
    required this.writePrivileged,
    required this.docs,
  });

  final String name;
  final int id;
  final bool read;
  final bool readPrivileged;
  final bool write;
  final bool writePrivileged;
  final String docs;

  String get formattedDocs {
    return [
      _formattedDesc,
      if (_permissionsDoc.isNotEmpty) ...[
        "/// ",
        "/// # Permissions",
        _permissionsDoc,
      ],
      if (_flaggedDoc.isNotEmpty) ...[
        "/// ",
        "/// # Availability Flag",
        _flaggedDoc,
      ],
    ].join("\n");
  }

  String get _formattedDesc {
    final desc = docs.split("<p>Property Config:")[0];
    final lines = desc
        .replaceAll("<p>", "")
        .split("\n")
        .map((l) => l.trim())
        .skip(1);
    final descLines = lines.map((l) => l.substring(1).trim()).toList();
    final cleaned =
        descLines.reversed.skipWhile((l) => l.isEmpty).toList().reversed;
    return cleaned.map((e) => "/// $e").join("\n");
  }

  String get _permissionsDoc {
    final split = docs.split("* <p>Required Permission");
    if (split case [_, final permissionsRaw]) {
      final arr =
          permissionsRaw
              .split("</ul>")[0]
              .split("<li>")
              .map((e) => e.replaceAll("</ul>", "").trim())
              .toList();
      final lines = [];
      if (arr case [_, final readRaw, final writeRaw, ...]) {
        lines.addAll(
          readRaw
              .split("\n")
              .map((l) => l.trim())
              .map((l) => l.startsWith("*") ? l.substring(1) : l)
              .map((l) => l.trim()),
        );
        lines.addAll(
          writeRaw
              .split("\n")
              .map((l) => l.trim())
              .map((l) => l.startsWith("*") ? l.substring(1) : l)
              .map((l) => l.trim()),
        );
      } else if (arr case [_, final readRaw, ...]) {
        lines.addAll(
          readRaw
              .split("\n")
              .map((l) => l.trim())
              .map((l) => l.startsWith("*") ? l.substring(1) : l)
              .map((l) => l.trim()),
        );
      } else {
        return "";
      }
      return lines
          .where((e) => e.isNotEmpty && e != "/")
          .map((l) => "/// $l")
          .join("\n");
    } else {
      return "";
    }
  }

  List<String> get flags {
    if (docs.contains("@FlaggedApi(")) {
      final splits = docs.split("@FlaggedApi(");
      if (splits case [_, final rawFlag]) {
        final extracted = rawFlag.split(")");
        if (extracted case [final flag, ...]) {
          return [flag];
        }
      }
    }
    return [];
  }

  String get _flaggedDoc {
    final flagContent = flags.join(", ");
    if (flagContent.isNotEmpty) {
      return "/// $flagContent";
    } else {
      return "";
    }
  }

  List<String> get _permissionLines {
    final lines = docs.split("\n").map((e) => e.trim()).toList();
    return lines.where((e) => e.startsWith("* @RequiresPermission")).toList();
  }

  List<String> get _basePermissions {
    final permissions =
        _permissionLines
            .where((e) => e.startsWith("* @RequiresPermission("))
            .toList();
    return permissions.map((e) => e.substring(22, e.length - 1)).toList();
  }

  Set<String> get readPermissions {
    if (read) {
      final normalPerm = _permissionLines.where(
        (e) =>
            e.startsWith("* @RequiresPermission.Read(@RequiresPermission(Car"),
      );
      final allOfPerm = _permissionLines.where(
        (e) => e.startsWith(
          "* @RequiresPermission.Read(@RequiresPermission(allOf = {",
        ),
      );
      final anyOfPerm = _permissionLines.where(
        (e) => e.startsWith(
          "* @RequiresPermission.Read(@RequiresPermission(anyOf = {",
        ),
      );
      return [
        ..._basePermissions,
        ...normalPerm.map((e) => e.substring(47, e.length - 2)),
        ...allOfPerm
            .map((e) => e.substring(56, e.length - 3).split(","))
            .expand((e) => e),
        ...anyOfPerm
            .map((e) => e.substring(56, e.length - 3).split(","))
            .expand((e) => e),
      ].map((e) => e.replaceAll("Car.", "").trim()).toSet();
    } else {
      return {};
    }
  }

  Set<String> get writePermissions {
    if (write) {
      final normalPerm = _permissionLines.where(
        (e) =>
            e.startsWith("* @RequiresPermission.Write(@RequiresPermission(Car"),
      );
      final allOfPerm = _permissionLines.where(
        (e) => e.startsWith(
          "* @RequiresPermission.Write(@RequiresPermission(allOf = {",
        ),
      );
      final anyOfPerm = _permissionLines.where(
        (e) => e.startsWith(
          "* @RequiresPermission.Write(@RequiresPermission(anyOf = {",
        ),
      );
      return [
        ..._basePermissions,
        ...normalPerm.map((e) => e.substring(48, e.length - 2)),
        ...allOfPerm
            .map((e) => e.substring(57, e.length - 3).split(","))
            .expand((e) => e),
        ...anyOfPerm
            .map((e) => e.substring(57, e.length - 3).split(","))
            .expand((e) => e),
      ].map((e) => e.replaceAll("Car.", "").trim()).toSet();
    } else {
      return {};
    }
  }

  Set<(String, bool)> get permissions => {
    for (final perm in readPermissions)
      if (_permissionIsSignature(perm)) (perm, true) else (perm, false),
    for (final perm in writePermissions)
      if (_permissionIsSignature(perm)) (perm, true) else (perm, false),
  };

  bool _permissionIsSignature(String permission) {
    final link = "{@link Car#$permission}";
    final [typeRaw, ...] = _permissionsDoc.split(link);
    final [..., type] = typeRaw.split("@link");
    return type.contains("Privileged");
  }

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

  final Map<VehiclePropertyInput, VehicleTypeProperties> _typeProps;

  static bool _needsPrivilegedPermission(String part) {
    if (part.contains(" or ")) {
      return (part.contains("Normal") || part.contains("Dangerous")) == false &&
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
      final typeProps = <VehiclePropertyInput, VehicleTypeProperties>{};
      for (final val in vals.constants2) {
        if (val.documentationComment case final comment?) {
          try {
            final type = VehiclePropertyInput.forName(val.displayName);

            final lis = comment
                .split("<li>")
                .where((l) => l.contains("permission"))
                .map(
                  (e) => e
                      .replaceAll("\n", " ")
                      .split(" ")
                      .where((e) => e.isNotEmpty)
                      .join(" "),
                );
            final readLis = lis.where((l) => l.contains("read"));
            final writeLis = lis.where((l) => l.contains("write"));

            typeProps[type] = VehicleTypeProperties(
              name: val.displayName,
              id: type.id,
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

  VehicleTypeProperties? getProps(VehiclePropertyInput type) {
    return _typeProps[type];
  }

  bool needsGetter(VehiclePropertyInput type, bool privileged) {
    return switch (_typeProps[type]) {
      null => false,
      final props => props.read && props.readPrivileged == privileged,
    };
  }

  bool needsSetter(VehiclePropertyInput type, bool privileged) {
    return switch (_typeProps[type]) {
      null => false,
      final props => props.write && props.writePrivileged == privileged,
    };
  }

  String? getDocs(VehiclePropertyInput type) {
    return _typeProps[type]?.formattedDocs;
  }
}
