import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

class FileGenerator {
  FileGenerator(this.object);

  final Spec object;

  String generate() {
    final emitter = DartEmitter();
    final source = object.accept(emitter).toString();
    final res = DartFormatter(languageVersion: DartFormatter.latestLanguageVersion).format(source);
    print(res);
    return res;
  }
}
