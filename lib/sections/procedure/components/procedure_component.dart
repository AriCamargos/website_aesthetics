import 'package:flutter/material.dart';
import '../../../models/service.dart';

class ProcedureComponent extends StatefulWidget {
  final int index;
  final String title;
  final String image;
  const ProcedureComponent({
    Key? key,
    required this.index,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  State<ProcedureComponent> createState() => _ProcedureComponentState();
}

class _ProcedureComponentState extends State<ProcedureComponent> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          services[widget.index].image,
          height: 300,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            Text(
              services[widget.index].title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
