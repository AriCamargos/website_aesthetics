import 'package:flutter/material.dart';
import 'package:web/components/whatsapp_button.dart';
import 'package:web/constants.dart';
import 'package:web/sections/treatments/components/checklist.dart';
import 'package:web/sections/treatments/components/subtitle.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPaddingMd * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SizedBox(height: kDefaultPaddingMd * 2),
          responsive.value({
            Breakpoints.xs: Padding(
              padding: kSizePageXs,
              child: Column(
                children: [
                  Image.asset(
                    'images/about_rai.jpg',
                    width: 400,
                  ),
                  const SizedBox(height: 15),
                  const Subtitle(
                    subtitle:
                        'Dra Raissa Campos é cirurgiã dentista especialista em saúde pública e procedimentos estéticos. Aplicando as mais modernas tecnologias em suas técnicas faciais, além de todo o conforto e atendimento individualizado para as suas necessidades.',
                  ),
                  const SizedBox(height: 15),
                  const ChecklistAbout(),
                  const SizedBox(height: 40),
                  const Center(
                    child: WhatsappButton(),
                  ),
                ],
              ),
            ),
            Breakpoints.md: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'images/logo_main_name.png',
                        width: 400,
                      ),
                      const SizedBox(height: 15),
                      const Subtitle(
                        subtitle:
                            'Dra Raissa Campos é cirurgiã dentista especialista em saúde pública e procedimentos estéticos. Aplicando as mais modernas tecnologias em suas técnicas faciais, além de todo o conforto e atendimento individualizado para as suas necessidades.',
                      ),
                      const SizedBox(height: 15),
                      const ChecklistAbout(),
                      const SizedBox(height: 40),
                      const Center(
                        child: WhatsappButton(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'images/about_rai.jpg',
                        alignment: Alignment.centerRight,
                        height: 800,
                        width: 400,
                        fit: BoxFit.fitWidth,
                      ),
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
