import "package:flutter_gram/app.dart";
import "package:flutter_gram/utils/fluttergram.dart";

import "utils/exporter.dart";

void main() async {
  //Dev Branch
  // This is a comment
  await FlutterGram.init();
  runApp(const ProviderScope(child: FlutterGramApp()));
}
