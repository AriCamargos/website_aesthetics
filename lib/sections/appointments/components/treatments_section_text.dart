import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TreatmentsSectionText extends StatelessWidget {
  final String subtitle;
  final String? title;
  final TextAlign align;
  const TreatmentsSectionText({
    super.key,
    required this.subtitle,
    this.title,
    required this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            textAlign: TextAlign.start,
            style: GoogleFonts.openSans(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              Expanded(
                child: Text(
                  subtitle,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}