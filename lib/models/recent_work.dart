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
      title: 'Preenchimentos',
      id: 1,
      category: 'Graphic Design',
      image: '/images/work_1.png'),
  RecentWork(
      title: 'Toxina Botulínica',
      id: 1,
      category: 'Graphic Design',
      image: '/images/work_2.png'),
  RecentWork(
      title: 'Emagrecimento Facial',
      id: 1,
      category: 'Graphic Design',
      image: '/images/work_3.png'),
  RecentWork(
      title: 'Bioestimuladores',
      id: 1,
      category: 'Graphic Design',
      image: '/images/work_4.png'),
        RecentWork(
      title: 'Pele',
      id: 1,
      category: 'Graphic Design',
      image: '/images/work_4.png'),
];
