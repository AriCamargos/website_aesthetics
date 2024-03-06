import 'package:flutter/material.dart';
import 'package:web/constants.dart';

class TopSection extends StatelessWidget {
  final ValueChanged<int> onMenuClick;

  const TopSection({super.key, required this.onMenuClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'images/logologo-simbol.png',
              fit: BoxFit.cover,
              width: 60,
              height: 60,
            ),
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              buildMenuButton('Tratamentos', 1),
              buildMenuButton('Dra Raissa', 2),
              buildMenuButton('Localização', 3),
              buildMenuButton('Contato', 4),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildMenuButton(String text, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: () => onMenuClick(index),
        child: Text(
          text,
          style: const TextStyle(fontSize: 15, color: kColorGold),
        ),
      ),
    );
  }
}
