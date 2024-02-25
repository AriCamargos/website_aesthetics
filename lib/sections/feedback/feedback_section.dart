import 'package:flutter/material.dart';
import 'package:web/constants.dart';
import '../../models/feedback.dart';
import '../components/main_title.dart';
import 'components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const MainTitle(
            title: 'Quem faz recomenda',
            subtitle:
                'Confira como os resultados estão encantando nossos clientes',
          ),
          const SizedBox(height: kDefaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            child: Row(
              children: List.generate(
                feedback.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding),
                  child: FeedbackCard(index: index),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}