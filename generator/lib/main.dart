import 'package:generator/builders/interface_builder.dart';
import 'package:generator/generators/file_generator.dart';

Future<void> main() async {
  final generator = FileGenerator(path: "output/output.dart");
  final interface = InterfaceBuilder().buildClass();
  await generator.generate(interface);
}
