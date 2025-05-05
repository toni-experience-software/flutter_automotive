import 'package:generator/builders/property_datasource_builder.dart';
import 'package:generator/builders/property_repo_builder.dart';
import 'package:generator/generators/file_generator.dart';

Future<void> main() async {
  final dataGenerator = FileGenerator(path: "output/datasource.dart");
  final datasource = AndroidInterfaceBuilder().buildClass();
  await dataGenerator.generate(datasource);

  final repoGenerator = FileGenerator(path: "output/repository.dart");
  final repo = PropertyRepoBuilder().buildClass();
  await repoGenerator.generate(repo);
}
