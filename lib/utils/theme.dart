import 'package:flutter_gram/utils/exporter.dart';

final darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
    colorScheme:
        ThemeData.dark().colorScheme.copyWith(background: Colors.black));

final lightTheme = ThemeData.light(useMaterial3: true).copyWith();
