class Feedback {
  final String name;
  final String? review;
  final String? userPic;
  final int? id;
  const Feedback({
    required this.name,
    this.review,
    this.userPic,
    required this.id,
  });
}

List<Feedback> feedback = [
  const Feedback(
    id: 1,
    name: 'Antonela Miranda',
    review: 'Meu rosto está radiante após o tratamento. Muito obrigada pela experiência!',
    userPic: 'assets/images/woman.jpg',
  ),
  const Feedback(
    id: 2,
    name: 'Marta Maria',
    review: 'Amei meu preenchimento labial! A Rai foi impecável no meu resultado!',
    userPic: 'assets/images/woman1.jpg',
  ),
  const Feedback(
    id: 3,
    name: 'Julia Almeida',
    review: 'Me senti muito bem cuidada desde o primeiro momento. Atendimento incrível!',
    userPic: 'assets/images/woman3.jpg',
  ),
  const Feedback(
    id: 4,
    name: 'Giovanna Figueira',
    review: 'Fiquei muito satisfeita com o resultado do meu procedimento, farei mais vezes!',
    userPic: 'assets/images/woman2.jpg',
  ),
  const Feedback(
    id: 5,
    name: 'Henrique Santos',
    review: 'Tratamentos são realmente muito eficazes, não troco!',
    userPic: 'assets/images/people.png',
  ),
];
