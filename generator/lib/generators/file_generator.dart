import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

class FileGenerator {
  FileGenerator({
    required this.path,
    DartEmitter? emitter,
  }) : emitter = emitter ?? DartEmitter();

  final String path;
  final DartEmitter emitter;

  Future<void> generate(Spec object) async {
    final source = object.accept(emitter).toString();
    final content = DartFormatter(languageVersion: DartFormatter.latestLanguageVersion).format(source);
    return await _writeContent(content);
  }

  Future<void> _writeContent(String content) async {
    final file = File(path);
    await file.create(recursive: true);
    await file.writeAsString(content);
  }
}
