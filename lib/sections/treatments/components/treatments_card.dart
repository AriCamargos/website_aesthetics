import 'package:flutter/material.dart';
import 'package:web/constants.dart';

class TreatmentsCard extends StatelessWidget {
  final String title;
  final List<String> listOptions;
  final IconData? icons;
  const TreatmentsCard({
    super.key,
    required this.title,
    required this.listOptions,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;

    return Container(
      width: isMobile ? 330 : 350,
      color: const Color(0xFF18191B),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title.toUpperCase(),
              style: const TextStyle(color: kColorGold, fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            for (var item in listOptions)
              Row(
                children: [
                  Icon(icons, color: kColorGold),
                  const SizedBox(width: 12),
                  Text(
                    item,
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
