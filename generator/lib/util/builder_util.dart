import 'package:code_builder/code_builder.dart';

class BuilderUtil {
  static Block ifElseStatement(Expression conditional, Code ifBody, Code elseBody) {
    return Block.of([
      Code('if ('),
      conditional.code,
      Code(') {'),
      ifBody,
      Code('} else {'),
      elseBody,
      Code('}'),
    ]);
  }
}
