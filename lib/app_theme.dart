import 'package:flutter/material.dart';

class AppTheme {
  ThemeData light() {
    var colorScheme = ColorScheme.fromSeed(
      seedColor: Colors.red,
      brightness: Brightness.light,
    );
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.inversePrimary,
      ),
      colorScheme: colorScheme,
      useMaterial3: true,
    );
  }

  ThemeData dark() {
    var colorScheme = ColorScheme.fromSeed(
      seedColor: Colors.red,
      brightness: Brightness.dark,
    );
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.inversePrimary,
      ),
      colorScheme: colorScheme,
      useMaterial3: true,
    );
  }
}
