import 'package:flutter/material.dart';
import 'package:web/models/recent_work.dart';
import 'package:web/sections/components/main_title.dart';
import '../../constants.dart';
import 'components/recent_work_card.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddingMd * 3),
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.3),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/recent_work_bg.png'),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 30),
          const MainTitle(
            title: 'TRATAMENTOS FULL FACE',
            subtitle:
                'Nossos principais tratamentos atuam no rejuvenescimento de todas as belezas',
          ),
          responsive.value({
            Breakpoints.xs: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: recentWork
                    .map(
                      (work) => Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Image.asset(
                              work.image!,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              work.title!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              work.category!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Breakpoints.md: Padding(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: kDefaultPaddingMd,
                  mainAxisSpacing: kDefaultPaddingMd,
                  childAspectRatio: 2.5,
                ),
                itemCount: recentWork.length,
                itemBuilder: (context, index) => RecentWorkCard(
                  index: index,
                  title: recentWork[index].title!,
                  subtitle: recentWork[index].category!,
                  image: recentWork[index].image!,
                  // press: () {},
                ),
              ),
            )
          }),
        ],
      ),
    );
  }
}
