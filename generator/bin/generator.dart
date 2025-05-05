import 'dart:io';

import 'package:generator/main.dart' as generator;
import 'package:path/path.dart' as path;

Future<void> main(List<String> arguments) async {
  final modelFile = File("../models/lib/src/vehicle_property.dart");
  final normalized = path.normalize(modelFile.absolute.path);
  final normalizedModelFile = File(normalized);
  generator.generate(normalizedModelFile);
}
