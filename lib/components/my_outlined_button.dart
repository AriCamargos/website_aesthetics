import 'package:flutter/material.dart';

import '../constants.dart';
class MyOutlineButton extends StatelessWidget {
  final Function press;
  final String text;
  final String image;
  const MyOutlineButton({
    super.key,
    required this.press,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding * 2.5,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      onPressed: () {},
      child: Row(
        children: [
          Image.asset(
           image,
            height: 40,
          ),
          const SizedBox(width: kDefaultPadding,),
          Text(text),
        ],
      ),
    );
  }
}