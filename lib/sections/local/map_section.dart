import 'package:flutter/material.dart';
import 'package:web/sections/local/components/map_screen.dart';
import '../../../constants.dart';
import '../components/main_title.dart';

class MapSection extends StatelessWidget {
  const MapSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainTitle(
          title: 'Onde estamos'.toUpperCase(),
          subtitle: 'Av Benedito Alves Turíbio 1838 - Osasco - São Paulo',
        ),
        const SizedBox(height: kDefaultPadding),
        const Column(
          children: [
            MapScreen(),
          ],
        ),
      ],
    );
  }
}