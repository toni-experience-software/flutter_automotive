import 'dart:io';

import 'package:generator/main.dart' as generator;
import 'package:path/path.dart' as path;

Future<void> main(List<String> arguments) async {
  final modelFile = File("lib/input/vehicle_property.dart");
  if (modelFile.existsSync()) {
    final normalized = path.normalize(modelFile.absolute.path);
    final normalizedModelFile = File(normalized);
    generator.generate(normalizedModelFile);
  } else {
    print("Model file not found at ${modelFile.absolute.path}");
  }
}
