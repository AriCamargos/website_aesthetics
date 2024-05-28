import 'package:flutter/material.dart';
import 'package:web/components/whatsapp_button.dart';
import 'package:web/constants.dart';
import 'package:web/sections/appointments/components/checklist.dart';
import 'package:web/sections/appointments/components/subtitle.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;

    return Container(
      color: const Color(0xFF18191B),
      child: Padding(
        padding: isMobile
            ? const EdgeInsets.symmetric(vertical: 20, horizontal: 20)
            : const EdgeInsets.symmetric(vertical: 50, horizontal: 300),
        child: Column(
          children: [
            const SizedBox(height: kDefaultPaddingMd * 2),
            responsive.value({
              Breakpoints.xs: Padding(
                padding: kSizePageXs,
                child: Column(
                  children: [
                    const Text(
                      'Dra. Raissa Campos',
                      style: TextStyle(
                          fontSize: 30,
                          color: kColorGold,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: const BoxDecoration(
                        boxShadow: [kDefaultShadow],
                      ),
                      child: Image.asset(
                        'assets/images/about_rai.jpg',
                        width: 400,
                      ),
                    ),
                    const SizedBox(height: 30),
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
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Raissa Campos',
                          style: TextStyle(
                            fontSize: 45,
                            color: kColorGold,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 15),
                        Subtitle(
                          subtitle:
                              'Dra Raissa Campos é cirurgiã dentista especialista em saúde pública e procedimentos estéticos. Aplicando as mais modernas tecnologias em suas técnicas faciais, além de todo o conforto e atendimento individualizado para as suas necessidades.',
                        ),
                        SizedBox(height: 15),
                        ChecklistAbout(),
                        SizedBox(height: 40),
                        Center(
                          child: WhatsappButton(),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: [kDefaultShadow],
                          ),
                          child: Image.asset(
                            'assets/images/about_rai.jpg',
                            alignment: Alignment.centerRight,
                            height: 700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            }),
          ],
        ),
      ),
    );
  }
}
