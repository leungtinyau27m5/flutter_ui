import 'package:flutter/material.dart';
import 'package:flutter_plant_app/config/theme_config.dart';
import 'package:flutter_plant_app/models/plant_model.dart';

class PlantDetailMenu extends StatelessWidget {
  const PlantDetailMenu({
    super.key,
    required this.size,
    required this.height,
  });

  final Size size;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.grey,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildMenuButton(
                    icon: Icons.wb_sunny_outlined,
                    onPressed: () {},
                  ),
                  _buildMenuButton(
                    icon: Icons.ac_unit_outlined,
                    onPressed: () {},
                  ),
                  _buildMenuButton(
                    icon: Icons.wind_power_outlined,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildMenuButton(
      {required void Function() onPressed, required IconData icon}) {
    return Container(
      height: 55,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: ThemeConfig.primaryColor.withOpacity(0.23),
          blurRadius: 20,
          offset: const Offset(0, 10),
        )
      ]),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8.0),
          backgroundColor: Colors.white,
          // foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0), side: BorderSide.none),
        ),
        child: Icon(
          icon,
          color: ThemeConfig.primaryColor,
          size: 32,
        ),
      ),
    );
  }
}
