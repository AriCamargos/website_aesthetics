import 'package:flutter/material.dart';
import 'package:web/components/section_title.dart';
import 'package:web/constants.dart';
import '../../models/feedback.dart';
import 'components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(
            title: 'Feeback',
            subtitle: 'Testemunho de clientes',
            color: Color(0xFF00B1FF),
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: List.generate(
              feedback.length,
              (index) =>  FeedbackCard(index: index,),
            ),
          ),
        ],
      ),
    );
  }
}


