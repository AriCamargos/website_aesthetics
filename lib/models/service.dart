import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image, subtitle;
  final Color color;
  final Function? press;

  Service({
    this.press,
    required this.id,
    required this.title,
    required this.image,
    required this.color,
    required this.subtitle,
  });
}

// For demo list of service
List<Service> services = [
  Service(
      id: 1,
      title: "Preenchimento",
      image: "/images/graphic.png",
      color: const Color(0xFFD9FFFC),
      subtitle:
          'A diminuição da contração muscular ameniza rugas de expressão como pés de galinha, linhas da testa e mais.'
      //press:
      ),
  Service(
    id: 2,
    title: "Toxina Botulínica",
    image: "/images/desktop.png",
    color: const Color(0xFFE4FFC7),
    subtitle: '',
    //  press: (){}
  ),
  Service(
    id: 3,
    title: "Emagrecimento Facial",
    image: "/images/ui.png",
    color: const Color(0xFFFFF3DD),
    subtitle: '',

    //   press: (){}
  ),
  Service(
    id: 4,
    title: 'Bioestimuladores',
    image: "/images/Intreaction_design.png",
    color: const Color(0xFFFFE0E0),
    subtitle: '',

    //  press: (){}
  ),
  /* Service(
    id: 4,
    title: "Pele",
    image: "/images/Intreaction_design.png",
    color: const Color(0xFFFFE0E0),
  ),*/
];
