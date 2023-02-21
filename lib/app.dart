import 'package:flutter/material.dart';
import 'package:flutter_plant_app/pages/home/home_page.dart';
import 'package:flutter_plant_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeProvider themeProvider, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeProvider.theme,
        home: Scaffold(
          // appBar: AppBar(
          //   actions: [
          //     IconButton(
          //       onPressed: () {
          //         themeProvider.swapTheme();
          //       },
          //       icon: themeProvider.isDark
          //           ? const Icon(Icons.lightbulb)
          //           : const Icon(Icons.dark_mode),
          //     ),
          //   ],
          // ),
          body: HomePage(),
        ),
      );
    });
  }
}
