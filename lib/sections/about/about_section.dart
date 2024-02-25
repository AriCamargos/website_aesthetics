import 'package:flutter/material.dart';
import 'package:web/constants.dart';

import '../../components/default_button.dart';
import '../treatments/components/checklist.dart';
import '../treatments/components/treatments_section_text.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

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
      margin: const EdgeInsets.fromLTRB(0, kDefaultPadding, 0, 1),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [

          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TreatmentsSectionText(
                      title: '',
                        subtitle:
                            'Dra Raissa Campos é cirugiã dentista especilista em saúde pública e procedimentos estéticos. Aplicando as mais modernas tecnologias em suas técnicas faciais, além de todo o conforto e atendimento individualizado para as  suas necessidades.'),
                    SizedBox(
                      height: 15,
                    ),
                    ChecklistAbout(),
                    SizedBox(height: 15),
                    Center(child: WhatsappButton()),
                  ],
                ),
              ),
              Expanded(
                child: Wrap(
                  children: [
                    Image.asset(
                      '/images/dra.png',
                      alignment: Alignment.centerRight,
                      height: 600,
                      fit: BoxFit.cover,
                      // width: 400,
                    ),
                  ],
                ),
              ),
            ],
          ),
         // const SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}
