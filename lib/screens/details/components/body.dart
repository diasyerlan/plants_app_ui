// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:plant_app/screens/details/components/bottom_buttons.dart';
import 'package:plant_app/screens/details/components/icon_buttons.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  final String title;
  final String country;
  final int price;
  const Body(
      {super.key,
      required this.title,
      required this.country,
      required this.price});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          IconButtons(size: size),
          TitleAndPrice(title: title, country: country, price: price),
          BottomButtons(size: size)
        ],
      ),
    );
  }
}
