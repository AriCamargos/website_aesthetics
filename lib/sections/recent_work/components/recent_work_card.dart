import 'package:flutter/material.dart';
import 'package:web/constants.dart';
import 'package:web/models/treatments_list.dart';

class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({
    super.key,
  });

  get index => null;

  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF18191B),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 90),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Preenchimento'.toUpperCase(),
              style: const TextStyle(color: kColorGold, fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            for (var treatmentsList in treatmentsList)
              Row(
                children: [
                  const Icon(Icons.stars_rounded, color: kColorGold),
                  const SizedBox(width: 12),
                  Text(
                    treatmentsList.item,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
    /* Row(
      children: [
        Image.asset(
          recentWork[index].image!,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 15),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
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
      ],
    );*/
  }
}
