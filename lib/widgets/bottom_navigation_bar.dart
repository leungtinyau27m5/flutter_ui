import 'package:flutter/material.dart';
import 'package:flutter_plant_app/config/theme_config.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: ThemeConfig.primaryColor.withOpacity(0.23),
          )
        ],
      ),
      child: Row(
        children: [
          _createNavButton(context, Icons.star_rounded),
          _createNavButton(context, Icons.favorite_rounded),
          _createNavButton(context, Icons.person_rounded),
        ],
      ),
    );
  }

  Widget _createNavButton(BuildContext context, IconData icon) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: ThemeConfig.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
