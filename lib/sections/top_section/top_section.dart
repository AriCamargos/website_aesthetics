import 'package:flutter/material.dart';
import 'package:web/constants.dart';

import '../components/menu.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [kDefaultShadow],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/logo1.png',
                color: Colors.black,
              ),
            ),
            const Menu(),
          ],
        )

        // height: 500,
        // alignment: Alignment.center,
        // constraints: const BoxConstraints(maxHeight: 700, minHeight: 700),
        // width: double.infinity,
        /*decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('/images/write-page.png'),
          fit: BoxFit.cover,
        ),
      ),*/
        );
  }
}

final List<String> bannerList = [
  '/images/write-page.png',
  '/images/banner1.png',
  '/images/banner2.png',
];
