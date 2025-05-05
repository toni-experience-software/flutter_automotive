import 'dart:io';

import 'package:generator/builders/interface_builder.dart';
import 'package:generator/generators/file_generator.dart';

void main() {
  final output = FileGenerator(InterfaceBuilder().buildClass()).generate();
  
  File("output/output.dart")
    ..createSync(recursive: true)
    ..writeAsStringSync(output);
}
