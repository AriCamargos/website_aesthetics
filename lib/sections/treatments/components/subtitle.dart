import 'package:flutter/material.dart';
import 'package:web/constants.dart';
class Subtitle extends StatelessWidget {
  final String subtitle;
  const Subtitle({
    super.key,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle,
            textAlign: TextAlign.justify,
            style:  TextStyle(
              fontSize: isMobile ? 15 : 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}