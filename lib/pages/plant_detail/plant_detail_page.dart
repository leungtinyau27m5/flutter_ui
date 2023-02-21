import 'package:flutter/material.dart';
import 'package:flutter_plant_app/config/theme_config.dart';
import 'package:flutter_plant_app/models/plant_model.dart';
import 'package:flutter_plant_app/pages/plant_detail/components/plant_detail_body.dart';
import 'package:flutter_plant_app/widgets/bottom_navigation_bar.dart';

class PlantDetailPage extends StatelessWidget {
  const PlantDetailPage({
    super.key,
    required this.plant,
  });

  final PlantModel plant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PlantDetailBody(
          plant: plant,
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
