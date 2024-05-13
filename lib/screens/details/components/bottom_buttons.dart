import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        children: [
          Container(
            width: size.width / 2,
            height: 70,
            decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Buy Now',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
          ),
          Expanded(
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Description',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )))
        ],
      ),
    );
  }
}
