import 'package:flutter/material.dart';
import 'package:web/sections/about/about_section.dart';

import '../../../constants.dart';
import '../../../models/service.dart';

class ServiceCard extends StatefulWidget {
  final int index;
  const ServiceCard({
    super.key,
    required this.index,
  });

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      /*onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AboutSection(),
        ),
      ),*/
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        constraints: const BoxConstraints(maxWidth: 1110),
        height: 256,
        width: 240,
        /*decoration: BoxDecoration(
            color: services[widget.index].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow]),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              padding: const EdgeInsets.all(kDefaultPadding * 1.5),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                        offset: const Offset(0, 20),
                        blurRadius: 30,
                        color: Colors.black.withOpacity(0.1))
                ],
              ),
              duration: duration,
              child: Image.asset(
                services[widget.index].image,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            Text(
              services[widget.index].title,
              style: const TextStyle(fontSize: 22),
            ),
            Center(
              
              child: Text(
                services[widget.index].subtitle,
                style: const TextStyle(fontSize: 15, wordSpacing: 2 ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
