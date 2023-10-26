import 'package:flutter/material.dart';
class Service {
  String? image;
  Color? color;
  String? title;
  int id;
  Service({
    this.image,
    this.color,
    this.title,
    required this.id,
  });
}

List<Service> services = [
  Service(
    title: 'New and Fresh Protifolio ineed at the end',
    id: 1,
    color: const Color(0xFFD9FFFC),
    image: 'assets/images/work_1.png'
  ),
   Service(
    title: 'New and Fresh Protifolio ineed at the end',
    id: 1,
    color: const Color(0xFFE4FFC7),
    image: 'assets/images/work_1.png'
  ),
   Service(
    title: 'New and Fresh Protifolio ineed at the end',
    id: 1,
    color: const Color(0xFFFFF3DD),
    image: 'assets/images/work_1.png'
  ),
   Service(
    title: 'New and Fresh Protifolio ineed at the end',
    id: 1,
    color: const Color(0xFFFFE0E0),
    image: 'assets/images/work_1.png'
  ),
];
