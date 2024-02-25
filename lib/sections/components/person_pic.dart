import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 693, maxHeight: 860),
      child: Image.asset('/images/model.png'),
    );
  }
}

class DividerShadow extends StatelessWidget {
  const DividerShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: MediaQuery.of(context).size.width,
      height: 0.5,
      decoration: BoxDecoration(
        color: Colors.red[50],
        boxShadow:   [
          BoxShadow(
            color: const Color.fromARGB(255, 245, 202, 209).withOpacity(1.0),
            spreadRadius: 3,
            blurRadius: 8,
            offset: const Offset(0, 5),
          ),
        ],
      ),
    ),
    );
  }
}
