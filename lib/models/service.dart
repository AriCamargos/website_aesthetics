import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;
   final Function? press;

  Service({
    this.press,
    required this.id,
    required this.title,
    required this.image,
    required this.color,
  });
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Preenchimento",
    image: "/images/graphic.png",
    color: const Color(0xFFD9FFFC),
    //press: 
  ),
  Service(
    id: 2,
    title: "Toxina Botulínica",
    image: "/images/desktop.png",
    color: const Color(0xFFE4FFC7),
    //  press: (){}
  ),
  Service(
    id: 3,
    title: "Emagrecimento Facial",
    image: "/images/ui.png",
    color: const Color(0xFFFFF3DD),
    //   press: (){}
  ),
  Service(
    id: 4,
    title: 'Bioestimuladores',
    image: "/images/Intreaction_design.png",
    color: const Color(0xFFFFE0E0),
    //  press: (){}
  ),
  /* Service(
    id: 4,
    title: "Pele",
    image: "/images/Intreaction_design.png",
    color: const Color(0xFFFFE0E0),
  ),*/
];
