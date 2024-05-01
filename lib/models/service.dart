class Service {
  final int id;
  final String title, image;
  final Function? press;

  Service({
    this.press,
    required this.id,
    required this.title,
    required this.image,
  });
}

List<Service> services = [
  Service(
    id: 1,
    title: "Evita linhas de expressão",
    image: "/images/image1.jpeg",
  ),
  Service(
    id: 2,
    title: "Corrije imperfeições",
    image: "/images/image2.jpeg",
  ),
  Service(
    id: 3,
    title: "Pele mais firme",
    image: "/images/image3.jpeg",
  ),
  Service(
    id: 4,
    title: 'Contorno facial definido',
    image: "/images/image4.jpeg",
  ),
  Service(
    id: 5,
    title: "Pele renovada radiante",
    image: "/images/image5.jpeg",
  ),
  Service(
    id: 6,
    title: "Dê adeus à flacidez",
    image: "/images/image6.jpeg",
  ),
];
