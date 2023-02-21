import 'package:flutter/material.dart';
import 'package:flutter_plant_app/config/theme_config.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0 / 4),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: 20.0 / 4),
              height: 7,
              color: ThemeConfig.primaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
