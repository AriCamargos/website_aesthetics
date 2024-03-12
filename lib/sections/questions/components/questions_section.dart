import 'package:flutter/material.dart';
import 'package:web/constants.dart';
import 'package:web/models/questions.dart';
import 'package:web/sections/questions/questions_card.dart';
import '../../components/main_title.dart';

class QuestionsSection extends StatelessWidget {
  final List<Questions> questions;
  const QuestionsSection({
    Key? key,
    required this.questions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? kDefaultPaddingXs : 0,
        vertical: isMobile ? 15 : kDefaultPaddingMd * 2.5,
      ),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const MainTitle(
            title: 'Dúvidas frequentes',
            subtitle:
                'Caso sua dúvida não estiver listada abaixo, fale conosco pelo botão do WhatsApp',
          ),
          const SizedBox(height: 15),
          isMobile
              ? Column(
                  children: questions.map((question) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: QuestionsCard(
                        title: question.title,
                        subtitle: question.subtitle,
                      ),
                    );
                  }).toList(),
                )
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 30.0,
                    crossAxisSpacing: 20.0,
                    childAspectRatio: 2.5,
                  ),
                  itemCount: questions.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: QuestionsCard(
                        title: questions[index].title,
                        subtitle: questions[index].subtitle,
                      ),
                    );
                  },
                ),
        ],
      ),
    );
  }
}
