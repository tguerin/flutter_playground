import 'package:flutter/widgets.dart';

class ThemeProvider extends ChangeNotifier {
  bool _darkMode = false;

  bool get darkMode => _darkMode;

  set darkMode(bool value) {
    if (_darkMode != value) {
      _darkMode = value;
      notifyListeners();
    }
  }

  void invertCurrentThemeMode() {
    darkMode = !darkMode;
  }
}
