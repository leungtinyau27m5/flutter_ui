import 'package:flutter/material.dart';
import 'package:flutter_plant_app/config/theme_config.dart';
import 'package:flutter_plant_app/pages/home/components/home_body.dart';
import 'package:flutter_plant_app/widgets/bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const SafeArea(
        child: HomeBody(),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: ThemeConfig.primaryColor,
      leading: IconButton(
        icon: const Icon(
          Icons.menu_rounded,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
