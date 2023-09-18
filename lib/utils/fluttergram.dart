import 'package:flutter_gram/utils/exporter.dart';

/// Class to manage initializing components before run app
class FlutterGram {
  FlutterGram._();

  static init() async {
    // initalialization stuff for the app before running app
    WidgetsFlutterBinding.ensureInitialized();
    //
  }
}
