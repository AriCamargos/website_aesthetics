import 'package:flutter/material.dart';

import 'package:web/constants.dart' show kDefaultPadding;
import 'package:web/models/questions.dart';

import '../components/main_subtitle.dart';

class QuestionsCard extends StatelessWidget {
  final int index;
  const QuestionsCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    Duration duration = const Duration(milliseconds: 200);

    return AnimatedContainer(
      // duration: duration,
      constraints: const BoxConstraints(maxWidth: 500),
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: 200,
      //width: 350,
      decoration: BoxDecoration(
        color: Colors.red[50],
      ),
      duration: duration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MainSubtitle(
           title: questions[index].title,
           subtitle:  questions[index].subtitle,
           aligment: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
