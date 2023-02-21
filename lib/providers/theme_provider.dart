import 'package:flutter/material.dart';
import 'package:flutter_plant_app/config/theme_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData _selectedTheme;
  ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: ThemeConfig.primaryColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true);
  ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: ThemeConfig.primaryColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true);
  bool isDark = false;

  ThemeProvider({required bool isDarkMode}) {
    _selectedTheme = isDarkMode ? darkTheme : lightTheme;
    isDark = isDarkMode;
  }

  Future<void> swapTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (_selectedTheme == darkTheme) {
      _selectedTheme = lightTheme;
      prefs.setBool("isDarkTheme", false);
    } else {
      _selectedTheme = darkTheme;
      prefs.setBool("isDarkTheme", true);
    }
    isDark = _selectedTheme == darkTheme;
    notifyListeners();
  }

  ThemeData get theme => _selectedTheme;
}
