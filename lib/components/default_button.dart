import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class DefaultButton extends StatelessWidget {
  final String? image;
  final Function press;
  const DefaultButton({
    super.key,
    this.image,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      label: Text('Atendimento online'.toUpperCase()),
      icon: const FaIcon(FontAwesomeIcons.whatsapp),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding * 2.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: const Color(0xFFE8F0F9),
      ),
      /*child: Row(
        children: [
          Image.asset(
            image!,
            height: 40,
          ),
          const SizedBox(
            width: kDefaultPadding,
          ),
          Text(text),
        ],
      ),*/
    );
  }
}
