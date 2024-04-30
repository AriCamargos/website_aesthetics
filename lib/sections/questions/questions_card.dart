import 'package:flutter/material.dart';
import '../components/main_subtitle.dart';

class QuestionsCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  const QuestionsCard({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20.0),
      decoration: const BoxDecoration(
      color: Color(0xFF18191B),
      ),
      child: MainSubtitle(
        title: title ?? '',
        subtitle: subtitle ?? '',
        color: Colors.white,
      ),
    );
  }
}
