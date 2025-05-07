import 'dart:io';

import 'package:generator/builders/datasource/datasource_builder.dart';
import 'package:generator/builders/repository/repo_builder.dart';
import 'package:generator/generators/file_generator.dart';
import 'package:generator/parsers/vehicle_type_doc_parser.dart';

Future<void> generate(File modelFile) async {
  final docParser = await VehicleTypeDocParser.init(modelFile);

  final dataGenerator = FileGenerator(path: "../plugin/lib/src/vehicle_datasource.dart");
  final datasource = AndroidInterfaceBuilder().buildLibrary();
  await dataGenerator.generate(datasource);

  final repoGenerator = FileGenerator(path: "../plugin/lib/src/vehicle_repository.dart");
  final repo = PropertyRepoBuilder(docParser).buildLibrary();
  await repoGenerator.generate(repo);
}
