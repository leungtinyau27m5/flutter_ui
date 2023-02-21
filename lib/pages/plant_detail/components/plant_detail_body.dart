import 'package:flutter/material.dart';
import 'package:flutter_plant_app/config/theme_config.dart';
import 'package:flutter_plant_app/models/plant_model.dart';
import 'package:flutter_plant_app/pages/plant_detail/components/plant_detail_menu.dart';

class PlantDetailBody extends StatelessWidget {
  const PlantDetailBody({super.key, required this.plant});

  final PlantModel plant;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final containerHeight = size.height * 0.6;
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              PlantDetailMenu(
                size: size,
                height: containerHeight,
              ),
              Container(
                height: containerHeight,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(63),
                    topLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 60,
                      color: ThemeConfig.primaryColor.withOpacity(0.29),
                    ),
                  ],
                  image: const DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: NetworkImage("https://placeholder.com/800x800")),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "${plant.name}\n",
                        style:
                            Theme.of(context).textTheme.headlineMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[800],
                            ),
                      ),
                      TextSpan(
                        text: plant.country,
                        style: const TextStyle(
                          color: ThemeConfig.primaryColor,
                        )
                      )
                    ],
                  ),
                ),
                Text(
                  "\$${plant.originalPrice.toString()}",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.normal,
                    color: ThemeConfig.primaryColor,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 56,),
        ],
      ),
    );
  }
}
