import 'package:flutter/material.dart';

class MenuClickState extends ChangeNotifier {
  final scrollController = ScrollController();

  final keySection1 = GlobalKey();
  final keySection2 = GlobalKey();
  final keySection3 = GlobalKey();
  final keySection4 = GlobalKey();
  final keySection5 = GlobalKey();

  void onMenuClick(int value) {
    final RenderBox renderBox;

    switch (value) {
      case 1:
        renderBox = keySection1.currentContext!.findRenderObject() as RenderBox;
        break;
      case 2:
        renderBox = keySection2.currentContext!.findRenderObject() as RenderBox;
        break;
      case 3:
        renderBox = keySection3.currentContext!.findRenderObject() as RenderBox;
        break;
      case 4:
        renderBox = keySection4.currentContext!.findRenderObject() as RenderBox;
        break;
      case 5:
        renderBox = keySection5.currentContext!.findRenderObject() as RenderBox;
        break;
      default:
        throw Exception();
    }
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