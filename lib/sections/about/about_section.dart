import 'package:flutter/material.dart';
import 'package:web/constants.dart';

import 'components/about_section_text.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.popAndPushNamed(context, '/about'),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        constraints: const BoxConstraints(maxWidth: 1110),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Text(
                'Sobre mim',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.,
                    children: const [
                      // AboutTextWithSign(),
                      Expanded(
                        child: AboutSectionText(
                            text:
                                'Graduada em Odontologia pela FMU 2018 \nEspecialista em saúde pública pela Anhembi Morumbi 2020 \nEspecialista em Harmonização Orofacial pelo IBOP 2023'),
                      ),
                      VerticalDivider(
                        color: Color(0xFF9bc9c7),
                        thickness: 10.0,
                      ),
                      //ExperienceCard(),
                      Expanded(
                        child: AboutSectionText(
                            text:
                                'Meu propósito é elevar autoestimas por meio da harmonização orofacial. Queremos que mulheres se sintam confiantes, exibindo sua beleza autêntica e contagiante. Valorizamos a essência de cada sorriso, transformando vidas.'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: kDefaultPadding * 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // MyOutlineButton(
                //    text: 'Contrate-me',
                //   press: () {},
                //   image: '/images/hand.png',
                //  ),
                // const SizedBox(
                //    width: kDefaultPadding * 1.5,
                //  ),
                //  DefaultButton(
                //  image: 'images/download.png',
                //   text: 'Download CV',
                //    press: () {},
                //   )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
