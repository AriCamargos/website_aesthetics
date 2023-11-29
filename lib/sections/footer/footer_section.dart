import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../constants.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(40),
        //constraints: const BoxConstraints(maxWidth: 1110, ),
        height: 250,
        decoration: BoxDecoration(
          color: Colors.amber,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text('Social Media'),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text('Social Media'),
              ],
            ),
          ],
        ));
  }
}
