import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  const MainTitle({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title.toUpperCase(),
          style: GoogleFonts.openSans(
            color: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Text(
          subtitle,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w300,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Center(
            child: Divider(
              // indent: 660,endIndent: 660,
              indent: 200, endIndent: 200,

              color: Colors.red[100],
            ),
          ),
        ),
      ],
    );
  }
}