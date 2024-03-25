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
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
      ),
      child: MainSubtitle(
        title: title ?? '',
        subtitle: subtitle ?? '',
        color: Colors.black,
      ),
    );
  }
}
