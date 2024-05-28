import 'package:flutter/material.dart';
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
        Image.asset('assets/images/logologo.png'),
        Container(
          color: Colors.black,
        ),
        const Spacer(),
        const Spacer(flex: 3),
      ],
    );
  }
}
