import "package:flutter_gram/app.dart";
import "package:flutter_gram/utils/fluttergram.dart";

import "utils/exporter.dart";

void main() async {
  //Dev Branch
  // Dear Reader
  await FlutterGram.init();
  runApp(const ProviderScope(child: FlutterGramApp()));
}
