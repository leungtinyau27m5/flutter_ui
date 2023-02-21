import 'package:flutter/material.dart';
import 'package:flutter_plant_app/config/theme_config.dart';
import 'package:flutter_plant_app/models/plant_model.dart';
import 'package:flutter_plant_app/pages/plant_detail/plant_detail_page.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({
    super.key,
    required this.plant,
  });

  final PlantModel plant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => PlantDetailPage(plant: plant,)
        ),);
      },
      child: Container(
        height: 160,
        width: 200,
        margin: const EdgeInsets.only(right: 8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://placeholder.com/200x160",
              ),
            ),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 30,
                  color: ThemeConfig.primaryColor.withOpacity(0.15)
              )
            ]
        ),
      ),
    );
  }
}