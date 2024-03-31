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
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 60),
        child: Column(
          children: [
            Text(
              'Preenchimento'.toUpperCase(),
              style: const TextStyle(color: kColorGold, fontSize: 25),
            ),
            const SizedBox(
              height: 20,
            ),
            for (var treatmentsList in treatmentsList)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Icon(Icons.stars_rounded, color: kColorGold),
                  const SizedBox(width: 10),
                  Text(
                    treatmentsList.item,
                    style: const TextStyle(color: Colors.white),
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
