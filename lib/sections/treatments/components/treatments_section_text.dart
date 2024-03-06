import 'package:flutter/material.dart';

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
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              textAlign: align,
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              subtitle,
              textAlign: align,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}