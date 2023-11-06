import 'package:flutter/material.dart';

import '../constants.dart';

class SectionTitle extends StatelessWidget {
  final String title, subtitle;
  final Color color;
  const SectionTitle({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      child: Row(children: [
        Container(
          margin: const EdgeInsets.only(right: kDefaultPadding),
          padding: const EdgeInsets.only(bottom: 72),
          width: 8,
          height: 100,
          color: Colors.black,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: color,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              subtitle,
              style: const TextStyle(
                fontWeight: FontWeight.w200,
                color: kTextColor,
              ),
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        )
      ]),
    );
  }
}
