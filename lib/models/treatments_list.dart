import 'package:flutter/material.dart';

class TreatmentsList {
  final int id;
  final String item;
  final Icon icon;
  TreatmentsList({
    required this.id,
    required this.item,
    required this.icon,
  });
}

List<TreatmentsList> treatmentsList = [
  TreatmentsList(
    id: 1,
    item: 'Labial',
    icon: const Icon(Icons.star_rate_rounded),
  ),
  TreatmentsList(
    id: 2,
    item: 'Rinomodelação',
    icon: const Icon(Icons.star_rate_rounded),
  ),
  TreatmentsList(
    id: 3,
    item: 'Malar',
    icon: const Icon(Icons.star_rate_rounded),
  ),
  TreatmentsList(
    id: 4,
    item: 'Mento',
    icon: const Icon(Icons.star_rate_rounded),
  ),
  TreatmentsList(
    id: 5,
    item: 'Bigode Chinês',
    icon: const Icon(Icons.star_rate_rounded),
  ),
  TreatmentsList(
    id: 6,
    item: 'Tempora',
    icon: const Icon(Icons.star_rate_rounded),
  ),
  TreatmentsList(
    id: 7,
    item: 'Mandíbula',
    icon: const Icon(Icons.star_rate_rounded),
  ),
];