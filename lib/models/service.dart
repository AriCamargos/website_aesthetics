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
    title: "Evitam o surgimento de linhas de expressão",
    image: "/images/.png",
    color: const Color(0xFFD9FFFC),
    subtitle:
        'Reduz rugas e linhas de expressão, promovendo uma aparência jovem e revitalizada.',
  ),
  Service(
    id: 2,
    title: "Corrije imperfeições",
    image: "/images/desktop.png",
    color: const Color(0xFFE4FFC7),
    subtitle:
        'Adiciona volume e contorno facial, corrigindo imperfeições e proporcionando uma aparência mais jovem e harmoniosa.',
  ),
  Service(
    id: 3,
    title: "Pele mais firme e rejuvenescida",
    image: "/images/ui.png",
    color: const Color(0xFFFFF3DD),
    subtitle:
        'Melhora a textura da pele, reduzindo manchas, cicatrizes e rugas. Estimula a produção de colágeno para uma pele mais firme e rejuvenescida.',
  ),
  Service(
    id: 4,
    title: 'Contorno facial mais definido',
    image: "/images/icon_beauty.png",
    color: const Color(0xFFFFE0E0),
    subtitle:
        'Elimina a gordura indesejada sob o queixo, proporcionando um contorno facial mais definido e uma aparência mais jovem.',
  ),
  Service(
    id: 5,
    title: "Pele renovada radiante",
    image: "/images/icon_botox.png",
    color: const Color(0xFFFFE0E0),
    subtitle:
        'Renova a pele, removendo células mortas e promovendo o crescimento de uma pele mais lisa e radiante. Reduz manchas e rugas.',
  ),
  Service(
    id: 6,
    title: "Dê adeus à flacidez",
    image: "/images/icon_treatments.png",
    color: const Color(0xFFFFE0E0),
    subtitle:
        'Diga adeus à flacidez facial com o Ultraformer, um procedimento não invasivo que utiliza ultrassom para estimular o colágeno e promover um lifting facial natural!',
  ),
];
