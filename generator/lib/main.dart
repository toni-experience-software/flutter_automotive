import 'dart:io';

import 'package:generator/builders/datasource/datasource_builder.dart';
import 'package:generator/builders/repository/repo_builder.dart';
import 'package:generator/generators/file_generator.dart';
import 'package:generator/parsers/vehicle_type_doc_parser.dart';

Future<void> generate(File modelFile) async {
  final docParser = await VehicleTypeDocParser.init(modelFile);

  final dataGenerator = FileGenerator(path: "output/datasource.dart");
  final datasource = AndroidInterfaceBuilder().buildLibrary();
  await dataGenerator.generate(datasource);

  final repoGenerator = FileGenerator(path: "output/repository.dart");
  final repo = PropertyRepoBuilder(docParser).buildLibrary();
  await repoGenerator.generate(repo);
}
