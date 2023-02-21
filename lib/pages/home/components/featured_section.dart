import 'package:flutter/material.dart';
import 'package:flutter_plant_app/config/theme_config.dart';
import 'package:flutter_plant_app/models/plant_model.dart';
import 'package:flutter_plant_app/widgets/featured_card.dart';
import 'package:flutter_plant_app/widgets/title_widget.dart';

class FeaturedSection extends StatelessWidget {
  FeaturedSection({Key? key}) : super(key: key);

  final List<PlantModel> plants = [
    PlantModel(
        imageUrl: "https://placeholder.com/160x170",
        name: "SAMANTHA",
        country: "RUSSIA",
        originalPrice: 440),
    PlantModel(
        imageUrl: "https://placeholder.com/160x170",
        name: "SAMANTHA",
        country: "RUSSIA",
        originalPrice: 440),
    PlantModel(
        imageUrl: "https://placeholder.com/160x170",
        name: "SAMANTHA",
        country: "RUSSIA",
        originalPrice: 440),
    PlantModel(
        imageUrl: "https://placeholder.com/160x170",
        name: "SAMANTHA",
        country: "RUSSIA",
        originalPrice: 440),
    PlantModel(
        imageUrl: "https://placeholder.com/160x170",
        name: "SAMANTHA",
        country: "RUSSIA",
        originalPrice: 440),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TitleWidget(
                title: "Featured Plants",
              ),
              TextButton(
                  onPressed: () {},
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    decoration: BoxDecoration(
                      color: ThemeConfig.primaryColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text(
                      "More",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20.0, top: 15),
          height: 200,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                  plants.map((plant) => FeaturedCard(plant: plant)).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
