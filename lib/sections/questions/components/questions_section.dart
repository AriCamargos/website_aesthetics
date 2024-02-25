import 'package:flutter/material.dart';
import 'package:web/constants.dart';
import 'package:web/models/questions.dart';
import 'package:web/sections/questions/questions_card.dart';
import '../../components/main_title.dart';

class QuestionsSection extends StatelessWidget {
  const QuestionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const MainTitle(
            title: 'Dúvidas frequentes',
            subtitle: 'Caso sua dúvida não estiver listada abaixo, fale conosco pelo botão do WhatsApp',
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: List.generate(
              questions.length,
              (index) =>  const QuestionsCard(),
            ),
          ),
        ],
      ),
    );
  }
}