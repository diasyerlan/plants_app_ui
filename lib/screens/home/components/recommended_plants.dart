// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/details_screen.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlantCard(
            title: 'Samantha',
            country: 'Russia',
            image: 'assets/images/image_1.png',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                          title: 'Samantha', country: 'Russia', price: 440)));
            },
            price: 440,
          ),
          RecommendedPlantCard(
            title: 'Angelica',
            country: 'Russia',
            image: 'assets/images/image_2.png',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                          title: 'Angelica', country: 'Russia', price: 440)));
            },
            price: 440,
          ),
          RecommendedPlantCard(
            title: 'Samantha',
            country: 'Russia',
            image: 'assets/images/image_3.png',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                          title: 'Samantha', country: 'Russia', price: 440)));
            },
            price: 440,
          ),
        ],
      ),
    );
  }
}

class RecommendedPlantCard extends StatelessWidget {
  final String title;
  final String country;
  final int price;
  final String image;
  final Function() onPressed;
  const RecommendedPlantCard({
    super.key,
    required this.title,
    required this.country,
    required this.price,
    required this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
        onTap: onPressed,
        child: Container(
          margin: const EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding * 2.5),
          width: size.width * 0.4,
          child: Column(
            children: [
              Image.asset(image),
              Container(
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23))
                    ],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: const TextStyle(color: Colors.black)),
                      TextSpan(
                          text: country.toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                    ])),
                    const Spacer(),
                    Text(
                      '\$$price',
                      style: const TextStyle(color: kPrimaryColor),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
