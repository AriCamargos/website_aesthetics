import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/constants.dart';
import 'package:web/models/first_consultation.dart';
import 'package:web/sections/treatments/components/subtitle.dart';
import 'package:google_fonts/google_fonts.dart';
class CheckList extends StatelessWidget {
  const CheckList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var firstConsultation in firstConsultation)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  Text(
                    firstConsultation.number,
                    style: const TextStyle(fontSize: 50, color: kColorGold),
                  ),
                  const SizedBox(width: 12),
                  Flexible(
                    child: Subtitle(
                      subtitle: firstConsultation.title,
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
                      color: Colors.white,
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
