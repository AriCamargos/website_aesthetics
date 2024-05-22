import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String text;
  final int number;
  final VoidCallback onPressed;
  final Color colors;
  final double fontSize;
  const MenuButton({
    super.key,
    required this.text,
    required this.number,
    required this.onPressed,
    required this.colors,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed(),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: colors,
        ),
      ),
    );
  }
}
