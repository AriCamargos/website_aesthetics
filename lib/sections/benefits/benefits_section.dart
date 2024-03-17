import 'package:flutter/material.dart';
import 'package:web/components/whatsapp_button.dart';
import 'package:web/components/whatsapp_button_soft.dart';
import 'package:web/constants.dart';
import 'package:web/models/service.dart';
import 'package:web/sections/components/main_title.dart';
import 'components/benefits_component.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';

class BenefitsSection extends StatelessWidget {
  const BenefitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final response = Responsive(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPaddingMd * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const MainTitle(
            title: 'Benefícios dos tratamentos',
            subtitle: '''Resgate sua jovialidade com '''
                '''uma aparência rejuvenescida que reflete sua verdadeira essência''',
          ),
          const SizedBox(height: 20),
          response.value({
            Breakpoints.xs: Column(
              children: services
                  .map(
                    (service) => Column(
                      children: [
                        Container(
                          height: 95,
                          width: 95,
                          decoration: BoxDecoration(
                            color: kColorGold,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 20),
                                blurRadius: 100,
                                color: Colors.black.withOpacity(0.1),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            service.image,
                            filterQuality: FilterQuality.none,
                            height: 100,
                            width: 100,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          service.title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          service.subtitle,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  )
                  .toList(),
            ),
            Breakpoints.md: Wrap(
              alignment: WrapAlignment.spaceBetween,
              spacing: 20,
              runSpacing: 20,
              children: List.generate(
                services.length,
                (index) => BenefitsComponent(index: index),
              ),
            ),
          }),
          const SizedBox(height: kDefaultPaddingMd * 2),
          const WhatsappButtonSoft(),
        ],
      ),
    );
  }
}
