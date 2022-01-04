import 'package:flutter/foundation.dart';

class AppThemeController extends ChangeNotifier {
  bool isDarkTheme = false;

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
