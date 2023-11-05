import 'package:flutter/material.dart';
import 'package:web/sections/top_section/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: const [
          TopSection(),
        ]),
      ),
    );
  }
}