import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          const BoxConstraints(maxWidth: 693, maxHeight: 860),
      child: Image.asset('/images/dra.png'),
    );
  }
}