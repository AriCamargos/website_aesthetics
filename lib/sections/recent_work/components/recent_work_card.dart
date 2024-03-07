import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/recent_work.dart';
import '../../components/main_subtitle.dart';

class RecentWorkCard extends StatelessWidget {
  final int index;
  final String? title;
  final String? subtitle;
  final String image;
  const RecentWorkCard({
    super.key,
    required this.index,
    this.title,
    this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          recentWork[index].image!,
          fit: BoxFit.cover,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(height: kDefaultPadding / 2),
                MainSubtitle(
                  title: title!,
                  subtitle: subtitle!,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
