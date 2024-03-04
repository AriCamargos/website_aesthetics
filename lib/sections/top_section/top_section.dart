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
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Image.asset(
              'images/logologo.png',
              width: 200,
              height: 150,
              fit: BoxFit.fill,
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text(
                    'Tratamentos',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () => onMenuClick(1),
                ),
                TextButton(
                  child: const Text(
                    'Dra Raissa',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () => onMenuClick(2),
                ),
                TextButton(
                  child: const Text(
                    'Localização',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () => onMenuClick(3),
                ),
                TextButton(
                  child: const Text(
                    'Contato',
                    style: TextStyle(fontSize: 15),
                  ),
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
