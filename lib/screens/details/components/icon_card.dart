import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';

class IconCard extends StatelessWidget {
  final String image;
  const IconCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: kBackgroundColor,
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 15), color: kPrimaryColor, blurRadius: 22),
            BoxShadow(
                offset: Offset(-15, -15), color: Colors.white, blurRadius: 20)
          ]),
      child: SvgPicture.asset(image),
    );
  }
}
