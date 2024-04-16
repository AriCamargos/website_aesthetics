class AppointmentList {
  final String title;
  final String number;
  AppointmentList({
    required this.title,
    required this.number,
  });
}

List<AppointmentList> appointmentList = [
  AppointmentList(
    title:
        'Primeiro, é feita uma avaliação completa. Conversaremos sobre suas principais queixas, dores e expectativas.',
    number: '01',
  ),
  AppointmentList(
    title:
        'Em seguida, montamos um plano de tratamento personalizado, considerando suas características únicas.',
    number: '02',
  ),
  AppointmentList(
    title:
        'Faremos um alinhamento de expectativas. Cada item proposto no tratamento será explicado. Você vai saber como ele vai atuar, sua duração e quando você começará a ver os resultados.',
    number: '03',
  ),
];
