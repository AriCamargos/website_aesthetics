import 'package:flutter/material.dart';
import '../../constants.dart';

class Menu extends StatelessWidget {
  final ValueChanged<int> onMenuClick;

  const Menu({super.key, required this.onMenuClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
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
            child: const Text('Benefícios'),
            onPressed: () => onMenuClick(2),
          ),
          TextButton(
            child: const Text('Dra Raissa'),
            onPressed: () => onMenuClick(3),
          ),
          TextButton(
            child: const Text('Contato'),
            onPressed: () => onMenuClick(4),
          ),
        ],
      ),
    );
  }
}
