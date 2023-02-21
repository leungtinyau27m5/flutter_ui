import 'package:flutter/material.dart';
import 'package:flutter_plant_app/config/theme_config.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.2 - 27,
            padding: const EdgeInsets.symmetric(horizontal: 28.0).copyWith(bottom: 36),
            decoration: const BoxDecoration(
              color: ThemeConfig.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                Text(
                  "Hi!",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 54,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: ThemeConfig.primaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color:
                          ThemeConfig.primaryColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.search_rounded,
                    color: ThemeConfig.primaryColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
