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
    image: "assets/images/image1.jpeg",
  ),
  Service(
    id: 2,
    title: "Corrije imperfeições",
    image: "assets/images/image2.jpeg",
  ),
  Service(
    id: 3,
    title: "Pele mais firme",
    image: "assets/images/image3.jpeg",
  ),
  Service(
    id: 4,
    title: 'Contorno facial definido',
    image: "assets/images/image4.jpeg",
  ),
  Service(
    id: 5,
    title: "Pele renovada radiante",
    image: "assets/images/image5.jpeg",
  ),
  Service(
    id: 6,
    title: "Dê adeus à flacidez",
    image: "assets/images/image6.jpeg",
  ),
];
