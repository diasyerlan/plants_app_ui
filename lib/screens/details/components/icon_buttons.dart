import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/icon_card.dart';

class IconButtons extends StatelessWidget {
  const IconButtons({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.76,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon:
                              SvgPicture.asset('assets/icons/back_arrow.svg')),
                    ),
                    const Spacer(),
                    const IconCard(
                      image: 'assets/icons/sun.svg',
                    ),
                    const IconCard(
                      image: 'assets/icons/icon_2.svg',
                    ),
                    const IconCard(
                      image: 'assets/icons/icon_3.svg',
                    ),
                    const IconCard(
                      image: 'assets/icons/icon_4.svg',
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63)),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29))
                  ],
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      alignment: Alignment.centerLeft,
                      image: AssetImage('assets/images/img.png'))),
            )
          ],
        ),
      ),
    );
  }
}
