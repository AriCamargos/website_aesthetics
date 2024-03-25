import 'package:flutter/material.dart';
import 'package:web/constants.dart';
import 'package:web/sections/treatments/components/subtitle.dart';

class CheckList extends StatelessWidget {
  const CheckList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> itens = <String>[
      'Harmonização Facial',
      'Preenchimento Facial e Labial',
      'Aplicação de Toxina Botulínica',
      'Ultrassom Microfocado (Ultraformer)',
    ];

    return Padding(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var item in itens)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.check,
                    color: kColorGold,
                    size: 20,
                    weight: 20,
                  ),
                  const SizedBox(width: 8),
                  Subtitle(
                    subtitle: item,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class ChecklistAbout extends StatelessWidget {
  const ChecklistAbout({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;
    final List<String> itens = <String>[
      'Graduada em Odontologia (FMU)',
      'Especialista em Saúde Pública (UAM)',
      'MBA em Marketing Digital (UAM)',
      'Especialista em Harmonização Orofacial (IBOP)',
    ];

    return Padding(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var item in itens)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.check,
                    color: kColorGold,
                    size: 30,
                    weight: 30,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    item,
                    style: TextStyle(
                      fontSize: isMobile ? 15 : 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}