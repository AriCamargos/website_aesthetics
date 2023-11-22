import 'package:flutter/material.dart';

import '../../constants.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItens = [
    'Home',
    'Sobre',
    'Serviços',
    'Localização',
    'Contato',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItens.length,
          (index) => buildMenuItem(index),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          constraints: const BoxConstraints(minWidth: 122),
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                menuItens[index],
                style: const TextStyle(fontSize: 20, color: kTextColor),
              ),
              //Hover Home
              AnimatedPositioned(
                left: 0,
                right: 0,
                bottom:
                    selectedIndex != index && hoverIndex == index ? -2 : -32,
                duration: const Duration(milliseconds: 200),
                child: Image.asset('/images/hover.png'),
              ),
              AnimatedPositioned(
                left: 0,
                right: 0,
                bottom: selectedIndex == index ? -2 : -32,
                duration: const Duration(milliseconds: 200),
                child: Image.asset('/images/hover.png'),
              ),
            ],
          ),
        ),
      );
}
