import 'package:flutter/material.dart';
import 'package:web/models/bioestimulators_list.dart';
import 'package:web/models/filler_list.dart';
import 'package:web/models/treatments_list.dart';
import 'package:web/sections/components/main_title.dart';
import 'components/recent_work_card.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.black
          //.withOpacity(0.3),
          /* image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(
            '/images/recent_work_bg.png',
            width: 10,
          ).image,
        ),*/
          ),
      child: Column(
        children: [
          const SizedBox(height: 30),
          const MainTitle(
            title: 'TRATAMENTOS',
            subtitle:
                'Nossos principais tratamentos atuam no rejuvenescimento de todas as belezas',
          ),
          responsive.value({
            /*Breakpoints.xs: SizedBox(
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
                            Text(work.category!,
                                textAlign: TextAlign.center,
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),*/
            Breakpoints.md: Padding(
              padding: const EdgeInsets.all(100),
              child: SingleChildScrollView(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  RecentWorkCard(
                    title: 'Preenchimento',
                    listOptions:
                        treatmentsList.map((item) => item.item).toList(),
                    icons: Icons.stars_rounded,
                  ),
                  const SizedBox(width: 15.0),
                  RecentWorkCard(
                    title: 'Bioestimuladores',
                    listOptions:
                        bioestimulatorsList.map((e) => e.item).toList(),
                    icons: Icons.bolt_outlined,
                  ),
                  const SizedBox(width: 15.0),
                  RecentWorkCard(
                    title: 'Botox',
                    listOptions: fillerList.map((e) => e.item).toList(),
                    icons: Icons.favorite_outlined,
                  ),
                ]),
              ),
            ),

            /* Breakpoints.lg: Padding(
              padding: const EdgeInsets.all(220.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
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
            ),*/
          }),
        ],
      ),
    );
  }
}
