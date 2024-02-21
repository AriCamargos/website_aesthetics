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
    subtitle:
        'Os efeitos de determinados procedimentos acabam gerando um alívio enorme para quem sofre com essa dificuldade.',
    //  press: (){}
  ),
  Service(
    id: 3,
    title: "Emagrecimento Facial",
    image: "/images/ui.png",
    color: const Color(0xFFFFF3DD),
    subtitle:
        'Utilizamos técnicas poderosas e tecnológicas que evitam consideravelmente marcas de expressão.',

    //   press: (){}
  ),
  Service(
    id: 4,
    title: 'Inibem os Músculos Tensos',
    image: "/images/Intreaction_design.png",
    color: const Color(0xFFFFE0E0),
    subtitle:
        'Há procedimentos indicados para dores de cervical e de cabeça tensional, já que descansam os músculos da região afetada.',
  ),
  Service(
    id: 4,
    title: "Previnem as Rugas",
    image: "/images/Intreaction_design.png",
    color: const Color(0xFFFFE0E0),
    subtitle:
        'Mantendo consultas periódicas os efeitos dos tratamentos irão continuar sua eficácia e assim evitando rugas marcadas no futuro.',
  ),
  Service(
    id: 4,
    title: "Previnem as Rugas",
    image: "/images/Intreaction_design.png",
    color: const Color(0xFFFFE0E0),
    subtitle:
        'Mantendo consultas periódicas os efeitos dos tratamentos irão continuar sua eficácia e assim evitando rugas marcadas no futuro.',
  ),
];
