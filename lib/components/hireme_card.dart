import 'package:flutter/material.dart';

import '../constants.dart';
import 'default_button.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [kDefaultShadow]),
      child: Row(
        children: [
          Image.asset(
            'images/email.png',
            height: 80,
            width: 80,
          ),
          const Padding(
            padding:
                EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 80,
              child: VerticalDivider(),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[

                Text(
                  'Pele lisinha o ano inteiro',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                /*Text(
                  'Tenha uma estimativa para seu novo projeto',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),*/
              ],
            ),
          ),
          DefaultButton(
            image: 'images/hand.png',
            text: 'Saiba mais',
            press: () {},
          ),
        ],
      ),
    );
  }
}