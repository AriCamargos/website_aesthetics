import 'package:flutter/material.dart';
import 'package:web/sections/local/components/local_card.dart';
import '../../../constants.dart';

import '../components/main_title.dart';

class LocalSection extends StatelessWidget {
  const LocalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          MainTitle(
            title: 'Onde estamos'.toUpperCase(),
            subtitle: 'Av Benedito Alves Turíbio 1838 - Osasco - São Paulo',
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: const [
              LocalCard(),
            ],
          ),
        ],
      ),
    );
  }
}
