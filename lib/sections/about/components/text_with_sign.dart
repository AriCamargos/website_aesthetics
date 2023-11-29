import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'A Dra',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
        ),
        const SizedBox(
          height: kDefaultPadding * 2,
        ),
        //Image.asset('/images/sign.png'),
      ],
    );
  }
}