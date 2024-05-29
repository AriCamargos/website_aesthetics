import 'package:flutter/material.dart';
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
    //final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;

    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(
          // horizontal: isMobile ? 10 : 0,
          //  vertical: isMobile ? 15 : 10 * 2.5,
          ),
      //constraints: const BoxConstraints(maxWidth: 1110),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 300),
        child: Column(
          children: [
            const MainTitle(
              title: 'Dúvidas frequentes',
              subtitle:
                  'Caso sua dúvida não estiver listada abaixo, fale conosco pelo botão do WhatsApp',
            ),
            const SizedBox(height: 15),
            /* isMobile
                ? 
                Column(
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
                :*/
            SizedBox(
              height: 500,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 30.0,
                  crossAxisSpacing: 20.0,
                  childAspectRatio: 2.9,
                ),
                itemCount: questions.length,
                //shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return QuestionsCard(
                    title: questions[index].title,
                    subtitle: questions[index].subtitle,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
