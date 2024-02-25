import 'package:flutter/material.dart';
import 'package:web/components/default_button.dart';
import 'package:web/components/section_title.dart';
import 'package:web/constants.dart';
import 'package:web/sections/components/main_subtitle.dart';
import '../components/main_title.dart';
import 'package:web/models/questions.dart';
import '../../models/questions.dart';

class QuestionsCard extends StatelessWidget {
  const QuestionsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Duration duration = const Duration(milliseconds: 200);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedContainer(
        // duration: duration,
        margin: const EdgeInsets.only(top: kDefaultPadding * 3),
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding,
        ),
        height: 200,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.red[50],
        ),
        duration: duration,
        child: Column(
          children: [
            Column(
              children: [
                MainSubtitle(
                  title: questions[0].title,
                  subtitle: questions[0].subtitle,
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
