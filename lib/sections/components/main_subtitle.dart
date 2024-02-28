import 'package:flutter/material.dart';
class MainSubtitle extends StatelessWidget {
  final String title;
  final String subtitle;
  final TextAlign? aligment;
  const MainSubtitle({super.key, required this.title, required this.subtitle, this.aligment,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: aligment,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subtitle,
          textAlign: aligment,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}