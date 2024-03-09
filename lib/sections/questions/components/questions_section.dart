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
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddingMd * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Expanded(
        child: Column(
          children: [
            const MainTitle(
              title: 'Dúvidas frequentes',
              subtitle:
                  'Caso sua dúvida não estiver listada abaixo, fale conosco pelo botão do WhatsApp',
            ),
            const SizedBox(height: kDefaultPaddingMd),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Wrap(
                alignment: WrapAlignment.center,
                runSpacing: 20,
                children: List.generate(
                  questions.length ~/ 2,
                  (index) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: QuestionsCard(index: index),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: QuestionsCard(index: index),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],),
          ],
        ),
      ),
    );
  }
}