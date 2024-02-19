import 'package:flutter/material.dart';
import 'package:web/constants.dart';

import '../components/menu.dart';
class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      //altura da página de top section
      height: 500,
      alignment: Alignment.center,
      constraints: const BoxConstraints(maxHeight: 700, minHeight: 700),
     // width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('/images/write-page.png'),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding),
       // width: 1200,
        child: Stack(
          children: const[
           // LogoAndBlurBox(size: size),
            /*const Positioned(
              bottom: 0,
              right: 0,
              child: PersonPic(),
            ),*/
             Positioned(
              bottom: 0,
              child: Menu(),
            ),
          ],
        ),
      ),
    );
  }
}
