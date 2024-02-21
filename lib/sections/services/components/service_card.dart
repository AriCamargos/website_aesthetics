import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/service.dart';

class ServiceCard extends StatefulWidget {
  final int index;
  const ServiceCard({
    Key? key,
    required this.index,
  }) : super(key: key);

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
        constraints: const BoxConstraints(maxWidth: 350), // Defina a largura máxima do cartão
        height: 260,
        width: MediaQuery.of(context).size.width * 0.3, // Defina a largura do cartão como 30% da largura da tela
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatedContainer(
              padding: const EdgeInsets.all(kDefaultPadding * 1.5),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.red[100],
                shape: BoxShape.circle,
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                      offset: const Offset(0, 20),
                      blurRadius: 100,
                      color: Colors.black.withOpacity(0.1),
                    ),
                ],
              ),
              duration: duration,
              child: Image.asset(
                services[widget.index].image,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              services[widget.index].title,
              style: const TextStyle(fontSize: 22),
            ),
            Center(
              child: Text(
                services[widget.index].subtitle,
                style: const TextStyle(fontSize: 15, wordSpacing: 2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}