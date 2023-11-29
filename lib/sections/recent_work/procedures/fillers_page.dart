import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../constants.dart';

class FillersPage extends StatelessWidget {
  const FillersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
        color: Colors.white,

        ),
      ),
    );
  }
}