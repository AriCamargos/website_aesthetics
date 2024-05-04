import 'package:flutter/material.dart';

class MenuClickState extends ChangeNotifier {
  final scrollController = ScrollController();
  final List<GlobalKey<State<StatefulWidget>>> sectionKeys =
      List.generate(6, (index) => GlobalKey());

  void onMenuClick(int value) {
    final RenderBox renderBox =
        sectionKeys[value].currentContext!.findRenderObject() as RenderBox;

    final offset = renderBox.localToGlobal(Offset.zero);
    scrollController.animateTo(offset.dy,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  Widget buildMenuButton(String text, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: () => onMenuClick(index),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}