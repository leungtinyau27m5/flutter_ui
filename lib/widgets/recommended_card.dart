import 'package:flutter/material.dart';
import 'package:flutter_plant_app/config/theme_config.dart';
import 'package:flutter_plant_app/models/plant_model.dart';
import 'package:flutter_plant_app/pages/plant_detail/plant_detail_page.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({
    super.key,
    required this.plant,
  });

  final PlantModel plant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PlantDetailPage(plant: plant,)),
        );
      },
      child: SizedBox(
        width: 160,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.network(
                plant.imageUrl,
                width: 160,
                height: 170,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "${plant.name}\n".toUpperCase(),
                            style: Theme.of(context).textTheme.labelLarge),
                        TextSpan(
                          text: plant.country.toUpperCase(),
                          style: TextStyle(
                            color: ThemeConfig.primaryColor.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "\$${plant.originalPrice}",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: ThemeConfig.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
