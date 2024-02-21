import 'package:flutter/material.dart';
import 'package:web/models/recent_work.dart';
import 'package:web/sections/components/main_title.dart';
import '../../constants.dart';
import 'components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding * 6),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFFF7E8FF).withOpacity(0.3),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/recent_work_bg.png'),
          ),
        ),
        child: Column(
          children: [
            /*Transform.translate(
              offset: const Offset(0, -80),
              child: const HireMeCard(),
            ),*/
            const SizedBox(height: 30),
            const MainTitle(
              title: 'TRATAMENTOS FULL FACE',
              subtitle:
                  'Nossos principais tratamentos atuam no rejuvenescimento de todas as belezas',
              // color: Color(0xFFFFB100),
            ),
            const SizedBox(
              height: kDefaultPadding * 2.5,
            ),
            SizedBox(
              width: 1110,
              child: Wrap(
                spacing: kDefaultPadding,
                runSpacing: kDefaultPadding,
                children: List.generate(
                  recentWork.length,
                  (index) => RecentWorkCard(
                    index: index,
                    press: () {},
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: kDefaultPadding * 5,
            )
          ],
        ),
      ),
    );
  }
}