import 'package:flutter/material.dart';
import 'package:web/models/bioestimulators_list.dart';
import 'package:web/models/filler_list.dart';
import 'package:web/models/treatments_list.dart';
import 'package:web/sections/components/main_title.dart';
import 'components/treatments_card.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';
import 'package:web/constants.dart';

class TreatmentsSection extends StatelessWidget {
  const TreatmentsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.black),
      child: Padding(
        padding: isMobile
            ? const EdgeInsets.symmetric(vertical: 20, horizontal: 20)
            : const EdgeInsets.symmetric(vertical: 50, horizontal: 300),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const MainTitle(
              title: 'TRATAMENTOS',
              subtitle:
                  'Nossos principais tratamentos atuam no rejuvenescimento de todas as belezas',
            ),
            responsive.value({
              Breakpoints.xs: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TreatmentsCard(
                      title: 'Preenchimento',
                      listOptions:
                          treatmentsList.map((item) => item.item).toList(),
                      icons: Icons.stars_rounded,
                    ),
                    const SizedBox(height: 20.0),
                    TreatmentsCard(
                      title: 'Bioestimuladores',
                      listOptions:
                          bioestimulatorsList.map((e) => e.item).toList(),
                      icons: Icons.bolt_outlined,
                    ),
                    const SizedBox(height: 20.0),
                    TreatmentsCard(
                      title: 'Botox',
                      listOptions: fillerList.map((e) => e.item).toList(),
                      icons: Icons.favorite_outlined,
                    ),
                  ],
                ),
              ),
              Breakpoints.md: Padding(
                padding: const EdgeInsets.all(100),
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TreatmentsCard(
                          title: 'Preenchimento',
                          listOptions:
                              treatmentsList.map((item) => item.item).toList(),
                          icons: Icons.stars_rounded,
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Expanded(
                        child: TreatmentsCard(
                          title: 'Bioestimuladores',
                          listOptions:
                              bioestimulatorsList.map((e) => e.item).toList(),
                          icons: Icons.bolt_outlined,
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Expanded(
                        child: TreatmentsCard(
                          title: 'Botox',
                          listOptions: fillerList.map((e) => e.item).toList(),
                          icons: Icons.favorite_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            }),
          ],
        ),
      ),
    );
  }
}
