import 'package:flutter/material.dart';

class TreatmentsSectionText extends StatelessWidget {
  final String subtitle;
  final String? title;
  const TreatmentsSectionText({
    super.key,
    required this.subtitle,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
        Text(
          subtitle,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}