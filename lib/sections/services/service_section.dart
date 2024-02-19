import 'package:flutter/material.dart';
import 'package:web/components/default_button.dart';
import 'package:web/constants.dart';
import 'package:web/models/service.dart';
import 'package:web/sections/about/components/about_section_text.dart';
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
          const TitleAndSubtitle(
            title: 'Benefícios dos tratamentos',
            subtitle: '''Resgate sua jovialidade com'''
                '''uma aparência rejuvenescida que reflete sua verdadeira essência''',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              services.length,
              (index) => ServiceCard(index: index),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultButton(
                text: 'Atendimento Online',
                image: '/images/contact_icon.png',
                press: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
