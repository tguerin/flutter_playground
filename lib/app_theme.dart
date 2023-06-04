import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  ThemeData light(bool edgeToEdgeAvailable) {
    var colorScheme = ColorScheme.fromSeed(
      seedColor: Colors.red,
      brightness: Brightness.light,
    );
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.inversePrimary,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.transparent,
          systemStatusBarContrastEnforced: false,
          systemNavigationBarContrastEnforced: false,
          systemNavigationBarDividerColor: Colors.transparent,
          systemNavigationBarIconBrightness: Brightness.dark,
          systemNavigationBarColor:
              edgeToEdgeAvailable ? Colors.transparent : colorScheme.background,
        ),
      ),
      colorScheme: colorScheme,
      useMaterial3: true,
    );
  }

  ThemeData dark(bool edgeToEdgeAvailable) {
    var colorScheme = ColorScheme.fromSeed(
      seedColor: Colors.red,
      brightness: Brightness.dark,
    );
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.inversePrimary,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
          systemStatusBarContrastEnforced: false,
          systemNavigationBarContrastEnforced: false,
          systemNavigationBarDividerColor: Colors.transparent,
          systemNavigationBarIconBrightness: Brightness.light,
          systemNavigationBarColor:
              edgeToEdgeAvailable ? Colors.transparent : colorScheme.background,
        ),
      ),
      colorScheme: colorScheme,
      useMaterial3: true,
    );
  }
}
