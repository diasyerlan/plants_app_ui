// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featured_plants.dart';
import 'package:plant_app/screens/home/components/header_with_search_box.dart';
import 'package:plant_app/screens/home/components/recommended_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: kPrimaryColor,
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              HeaderWithSearchField(size: size),
              TitleWithMoreButton(onTap: () {}, title: "Recommended"),
              const RecommendedPlants(),
              TitleWithMoreButton(title: "Featured Plants", onTap: () {}),
              const FeaturedPlants(),
              const SizedBox(height: kDefaultPadding)
            ],
          ),
        ),
      ),
    );
  }
}
