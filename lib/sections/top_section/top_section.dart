import 'package:flutter/material.dart';
import 'package:web/sections/footer/menu_button.dart';

class TopSection extends StatelessWidget {
  final ValueChanged<int> onMenuClick;

  const TopSection({super.key, required this.onMenuClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(5.0, 3.9),
            blurRadius: 50,
            blurStyle: BlurStyle.normal,
            color: Colors.white,
          )
        ],
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
              MenuButton(
                text: 'Home',
                number: 1,
                colors: Colors.black,
                onPressed: () => onMenuClick(1),
                fontSize: 20,
              ),
              MenuButton(
                text: 'Tratamentos',
                number: 2,
                colors: Colors.black,
                onPressed: () => onMenuClick(2),
                fontSize: 20,
              ),
              MenuButton(
                text: 'Procedimentos',
                number: 3,
                colors: Colors.black,
                onPressed: () => onMenuClick(3),
                fontSize: 20,
              ),
              MenuButton(
                text: 'Dra Raissa',
                number: 4,
                colors: Colors.black,
                onPressed: () => onMenuClick(4),
                fontSize: 20,
              ),
              MenuButton(
                text: 'Localização',
                number: 5,
                colors: Colors.black,
                onPressed: () => onMenuClick(5),
                fontSize: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
