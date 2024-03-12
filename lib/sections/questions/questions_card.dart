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
    Duration duration = const Duration(milliseconds: 200);
    return AnimatedContainer(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: const BoxDecoration(
        color: Colors.black26,
      ),
      duration: duration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MainSubtitle(
            title: title ?? '',
            //alignment: TextAlign.start,
            subtitle: subtitle ?? '',
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
