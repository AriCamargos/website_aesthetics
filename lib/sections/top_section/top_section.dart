import 'package:flutter/material.dart';
import 'package:web/constants.dart';

class TopSection extends StatelessWidget {
  final ValueChanged<int> onMenuClick;

  const TopSection({super.key, required this.onMenuClick});

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
          Container(
            alignment: Alignment.center,
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
            constraints: const BoxConstraints(maxWidth: 1110),
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                TextButton(
                  child: const Text('Tratamentos'),
                  onPressed: () => onMenuClick(1),
                ),
                TextButton(
                  child: const Text('Dra Raissa'),
                  onPressed: () => onMenuClick(2),
                ),
                TextButton(
                  child: const Text('Localização'),
                  onPressed: () => onMenuClick(3),
                ),
                TextButton(
                  child: const Text('Contato'),
                  onPressed: () => onMenuClick(4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final List<String> bannerList = [
  '/images/write-page.png',
  '/images/banner1.png',
  '/images/banner2.png',
];
