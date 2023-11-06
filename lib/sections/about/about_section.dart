import 'package:flutter/material.dart';
import 'package:web/constants.dart';

import '../../components/default_button.dart';
import '../../components/my_outlined_button.dart';
import 'components/about_section_text.dart';
import 'components/experience_card.dart';
import 'components/text_with_sign.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxHeight: 1110),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AboutTextWithSign(),
                Expanded(
                  child: AboutSectionText(
                    text:
                        '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."',
                  ),
                ),
                ExperienceCard(),
                Expanded(
                  child: AboutSectionText(
                    text:
                        '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: kDefaultPadding * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                text: 'Contrate-me',
                press: () {},
                image: '/images/hand.png',
              ),
              const SizedBox(width: kDefaultPadding * 1.5,),
              DefaultButton(
                image: 'images/download.png',
                text: 'Download CV',
                press: (){},
              )
            ],
          ),
        ],
      ),
    );
  }
}

