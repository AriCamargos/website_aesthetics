import 'package:flutter/material.dart';

import '../../../constants.dart';
class ExperienceCard extends StatelessWidget {
  final String? numOfExperience;
  const ExperienceCard({
    super.key, this.numOfExperience = '10',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding:  const EdgeInsets.all(kDefaultPadding),
      height: 240,
      width: 255,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 3),
              blurRadius: 6,
              color: const Color(0xFFa600FF).withOpacity(0.25))
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Text(
                numOfExperience!,
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 6
                    ..color = const Color(0xFFDFA3FF).withOpacity(0.5),
                  shadows: [
                    BoxShadow(
                      offset: const Offset(0, 5),
                      blurRadius: 10,
                      color: const Color(0xFFA600FF).withOpacity(0.5),
                    ),
                  ],
                ),
              ),
               Text(
                numOfExperience!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 100,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          const Text(
            'Anos de experiência',
            style: TextStyle(
              color: Color(0xFFA600FF),
            ),
          ),
        ],
      ),
    );
  }
}