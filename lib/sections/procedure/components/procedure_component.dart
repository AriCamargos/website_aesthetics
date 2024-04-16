import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/service.dart';

class ProcedureComponent extends StatefulWidget {
  final int index;
  final String title;
  final String subtitle;
  final String image;
  const ProcedureComponent({
    Key? key,
    required this.index,
    required this.title,
    required this.subtitle,
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
    return AnimatedContainer(
      duration: duration,
      // constraints: const BoxConstraints(maxWidth: 350), // Defina a largura máxima do cartão
      width: MediaQuery.of(context).size.width *
          0.3, // Defina a largura do cartão como 30% da largura da tela
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AnimatedContainer(
            padding: const EdgeInsets.all(kDefaultPaddingMd * 1.5),
            decoration: BoxDecoration(
              color: kColorGold,
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
              height: 60,
              fit: BoxFit.fill,
            ),
          ),
          Flexible(
            child: Column(
              children: [
                Text(
                  services[widget.index].title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  services[widget.index].subtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 15, wordSpacing: 2, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}