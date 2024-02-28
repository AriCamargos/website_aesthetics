import 'package:flutter/material.dart';

class Feedback extends MaterialScrollBehavior{
  final String name;
  final String? review;
  final String? userPic;
  final int? id;
  final Color? color;
  const Feedback({
    required this.name,
    this.review,
    this.userPic,
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
    color: Colors.red[50],
  ),
  Feedback(
    id: 2,
    name: 'Antonela Miranda',
    review: review,
    userPic: 'assets/images/people.png',
    color: Colors.red[50],
  ),
  Feedback(
    id: 3,
    name: 'Antonela Miranda',
    review: review,
    userPic: 'assets/images/people.png',
    color: Colors.red[50],
  ),
  /*Feedback(
    id: 4,
    name: 'Antonela Miranda',
    review: review,
    userPic: 'assets/images/people.png',
    color: Colors.red[50],
  ),
  Feedback(
    id: 5,
    name: 'Antonela Miranda',
    review: review,
    userPic: 'assets/images/people.png',
    color: Colors.red[50],
  ),*/
];

String review =
    '''Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua enim ad minim veniam.''';
