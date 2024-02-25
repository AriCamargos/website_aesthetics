import 'package:flutter/material.dart';
import 'package:web/constants.dart';

import 'components/checklist.dart';
import 'components/treatments_section_text.dart';

class TreatmentsSection extends StatelessWidget {
  const TreatmentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      /*decoration: BoxDecoration(
        //boxShadow: [kDefaultCardShadowDiagonal],
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Colors.red[200]!, Colors.white],
        ),
      ),*/
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset(
                      '/images/woman_seat.jpg',
                      alignment: Alignment.centerRight,
                      height: 500,
                      fit: BoxFit.cover,
                      // width: 400,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TreatmentsSectionText(
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
              )
            ],
          ),
          const SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}
