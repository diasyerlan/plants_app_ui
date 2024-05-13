import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final String title;
  final String country;
  final int price;
  const DetailsScreen(
      {super.key,
      required this.title,
      required this.country,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(title: title, country: country, price: price),
    );
  }
}
