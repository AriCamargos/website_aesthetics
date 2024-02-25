import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
class WhatsButton extends StatelessWidget {
  final Function press;
  final String text;
  const WhatsButton({
    super.key,
    required this.press,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      onPressed: () {},
      child: Row(
        children: [
          const FaIcon(FontAwesomeIcons.whatsapp),
          const SizedBox(width: kDefaultPadding,),
          Text(text),
        ],
      ),
    );
  }
}