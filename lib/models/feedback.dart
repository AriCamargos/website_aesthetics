import 'package:flutter/material.dart';

class Feedback {
  String? name;
  String? review;
  String userPic;
  int? id;
  Color? color;
  Feedback({
    required this.name,
    this.review,
    required this.userPic,
    required this.id,
    required this.color,
  });
}

List<Feedback> feedback = [
  Feedback(
    id: 1,
    name: 'Antonela Miranda',
    review: review,
    userPic: 'assets/images/people.png',
    color: const Color.fromARGB(255, 243, 215, 180),
  ),
  Feedback(
    id: 2,
    name: 'Antonela Miranda',
    review: review,
    userPic: 'assets/images/people.png',
    color: const Color(0xFFD9FFFC),
  ),
  Feedback(
    id: 3,
    name: 'Antonela Miranda',
    review: review,
    userPic: 'assets/images/people.png',
    color: const Color.fromARGB(255, 243, 217, 255),
  ),
];

String review =
    '''Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua enim ad minim veniam.''';
