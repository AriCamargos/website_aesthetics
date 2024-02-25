import 'package:flutter/material.dart';
import 'package:web/components/default_button.dart';
import 'package:web/constants.dart';
import 'package:web/models/service.dart';
import 'package:web/sections/components/main_title.dart';
import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const MainTitle(
            title: 'Benefícios dos tratamentos',
            subtitle: '''Resgate sua jovialidade com'''
                '''uma aparência rejuvenescida que reflete sua verdadeira essência''',
          ),
          const SizedBox(height: 20),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            spacing: 20,
            runSpacing: 20,
            children: List.generate(
              services.length,
              (index) => ServiceCard(index: index),
            ),
          ),
          const SizedBox(height: kDefaultPadding * 5),
          const WhatsappButton(
            //press: () {},
          ),
          /* Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultButton(
                text: 'Atendimento Online',
                image: '/images/contact_icon.png',
                press: () {},
              )
            ],
          )*/
        ],
      ),
    );
  }
}
