import 'package:flutter/material.dart';
import 'package:web/constants.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';
import 'components/checklist.dart';
import 'components/treatments_section_text.dart';

class TreatmentsSection extends StatelessWidget {
  const TreatmentsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SizedBox(height: kDefaultPadding * 2),
          responsive.value({
            Breakpoints.xs: Padding(
              padding: kSizePageXs,
              child: Column(
                children: [
                  const TreatmentsSectionText(
                    align: TextAlign.center,
                    title: 'Como Funcionam os Tratamentos?',
                    subtitle:
                        '''Cuidadosamente personalizados para as necessidades de cada cliente, utilizamos a associação de diversas técnicas para alcançarmos a beleza rejuvenescida desejada.

Todos os nossos procedimentos visam resultados duradouros através de técnicas validadas e produtos de marcas conhecidas.
                          
Oferecemos uma grande variedade de tratamentos, confira alguns:''',
                  ),
                  const SizedBox(height: 12),
                  const CheckList(),
                  const SizedBox(height: 12),
                  Image.asset(
                    '/images/woman_seat.jpg',
                    alignment: Alignment.centerRight,
                    height: 500,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Breakpoints.md: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        '/images/woman_seat.jpg',
                        alignment: Alignment.centerRight,
                        height: 500,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                const Expanded(
                  child: Column(
                    children: [
                      TreatmentsSectionText(
                        align: TextAlign.right,
                        title: 'Como funcionam os tratamentos?',
                        subtitle:
                            '''Cuidadosamente personalizados para as necessidades de cada cliente, utilizamos a associação de diversas técnicas para alcançarmos a beleza rejuvenescida desejada.
                      
Todos os nossos procedimentos visam resultados duradouros através de técnicas validadas e produtos de marcas conhecidas.
                                
Oferecemos uma grande variedade de tratamentos, confira alguns:''',
                      ),
                      SizedBox(height: 15),
                      CheckList(),
                    ],
                  ),
                ),
              ],
            ),
          }),
        ],
      ),
    );
  }
}
