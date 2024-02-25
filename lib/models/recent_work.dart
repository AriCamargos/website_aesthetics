// ignore_for_file: public_member_api_docs, sort_constructors_first
class RecentWork {
  String? image;
  String? category;
  String? title;
  int id;
  RecentWork({
    this.image,
    this.category,
    this.title,
    required this.id,
  });
}

List<RecentWork> recentWork = [
  RecentWork(
      title: 'Tratamentos para Flacidez Facial',
      id: 1,
      category:
          'Liberte-se das marcas do tempo recuperando sua beleza e jovialidade com uma pele mais firme e radiante.',
      image: '/images/work_1.png'),
  RecentWork(
      title: 'Rejuvenescimento Profundo das Olheiras',
      id: 1,
      category:
          'Olhos radiantes e sem marcas com o rejuvenescimento de olheiras profundas, escuras e com bolsas.',
      image: '/images/work_2.png'),
  RecentWork(
      title: 'Revitalização da Boca e Volumização dos Lábios',
      id: 1,
      category:
          'Levamos brilho e volume aos seus lábios em conjunto com a remoção de linhas de expressão em toda a região da boca.',
      image: '/images/work_3.png'),
  RecentWork(
      title: 'Bioestimuladores',
      id: 1,
      category: 'Graphic Design',
      image: '/images/work_4.png'),
  RecentWork(
      title: 'Recuperação de Manchas na Pele',
      id: 1,
      category:
          'Utilizamos técnicas eficazes na remoção de manchas para uma pele impecável e uniforme.',
      image: '/images/work_4.png'),
];
