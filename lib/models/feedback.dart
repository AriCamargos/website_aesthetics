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
  Feedback(
    id: 1,
    name: 'Antonela Miranda',
    review: review,
    userPic: 'assets/images/people.png',
  ),
  Feedback(
    id: 2,
    name: 'Antonela Miranda',
    review: review,
    userPic: 'assets/images/people.png',
  ),
  Feedback(
    id: 3,
    name: 'Antonela Miranda',
    review: review,
    userPic: 'assets/images/people.png',
  ),
  Feedback(
    id: 3,
    name: 'Antonela Miranda',
    review: review,
    userPic: 'assets/images/people.png',
  ),
  Feedback(
    id: 3,
    name: 'Antonela Miranda',
    review: review,
    userPic: 'assets/images/people.png',
  ),
];

String review =
    '''Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua enim ad minim veniam.''';
