import 'package:flutter/material.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';

class MainSubtitle extends StatelessWidget {
  final String title;
  final String subtitle;
  final TextAlign? aligment;
  final Color color;
  const MainSubtitle({
    super.key,
    required this.title,
    required this.subtitle,
    this.aligment,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return responsive.value({
      Breakpoints.xs: Column(
        children: [
          Text(
            title,
            textAlign: aligment,
            style: TextStyle(
              color: color,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            subtitle,
            textAlign: aligment,
            style: TextStyle(
              color: color,
              fontSize: 12,
            ),
          ),
        ],
      ),
      Breakpoints.md: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: color,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            subtitle,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: color,
              fontSize: 15,
            ),
          ),
        ],
      ),
    });
  }
}
