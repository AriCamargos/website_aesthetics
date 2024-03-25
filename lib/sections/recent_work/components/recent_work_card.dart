import 'package:flutter/material.dart';
import '../../../models/recent_work.dart';

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
        const SizedBox(width: 15),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Flexible(
              child: Column(children: [
                Text(
                  recentWork[index].title!,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 10),
                Text(
                  recentWork[index].category!,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
