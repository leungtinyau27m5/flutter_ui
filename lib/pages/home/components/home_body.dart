import 'package:flutter/material.dart';
import 'package:flutter_plant_app/pages/home/components/featured_section.dart';
import 'package:flutter_plant_app/pages/home/components/header_with_search_box.dart';
import 'package:flutter_plant_app/pages/home/components/recommended_section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          const SizedBox(
            height: 56,
          ),
          RecommendedSection(),
          FeaturedSection(),
          const SizedBox(
            height: 56,
          ),
        ],
      ),
    );
  }
}
