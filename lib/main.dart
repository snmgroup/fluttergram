import "package:flutter_gram/app.dart";
import "package:flutter_gram/utils/fluttergram.dart";

import "utils/exporter.dart";

void main() async {
  await FlutterGram.init();
  runApp(const ProviderScope(child: FlutterGramApp()));
}
