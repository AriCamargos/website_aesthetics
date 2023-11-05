import 'package:flutter/material.dart';

import 'glass_content.dart';

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/logo1.png'),
        Container(
          color: Colors.black,
        ),
        const Spacer(),
        GlassContente(size: size),
        const Spacer(flex: 3),
      ],
    );
  }
}