import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/recent_work.dart';

class RecentWorkCard extends StatelessWidget {
  final int index;
  const RecentWorkCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 540,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [kDefaultCardShadow],
      ),
      child: Row(
        children: [
          Image.asset(recentWork[index].image!),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(recentWork[index].title!),
                  const SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  Text(
                    recentWork[index].title!,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(height: 1.5),
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  const Text(
                    'Ver Detalhes',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
