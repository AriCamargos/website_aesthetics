import 'package:flutter/material.dart';
import 'package:web/constants.dart';
import 'package:web/sections/map/components/map_screen.dart';
import '../components/main_title.dart';

class MapSection extends StatelessWidget {
  const MapSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;
    return Container(
      color: const Color(0xFF18191B),
      constraints: const BoxConstraints(maxWidth: double.maxFinite),
      child: Padding(
        padding: isMobile
            ? const EdgeInsets.symmetric(vertical: 20, horizontal: 20)
            : const EdgeInsets.symmetric(vertical: 50, horizontal: 300),
        child: Column(
          children: [
            MainTitle(
              title: 'Onde estamos'.toUpperCase(),
              subtitle:
                  'Av Benedito Alves Turíbio 1838 - Padroeira II - Osasco - São Paulo',
            ),
            const SizedBox(height: 10),
            const Column(
              children: [
                MapScreen(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
