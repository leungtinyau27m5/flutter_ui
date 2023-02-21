import 'package:flutter/material.dart';
import 'package:flutter_plant_app/app.dart';
import 'package:flutter_plant_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return runApp(ChangeNotifierProvider(
    child: const MyApp(),
    create: (BuildContext context) => ThemeProvider(
      isDarkMode: prefs.getBool("isDarkTheme") ?? false,
    ),
  ));
}
