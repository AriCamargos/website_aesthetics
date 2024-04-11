import 'package:flutter/material.dart';

class BioestimulatorsList {
  final int id;
  final String item;
  final Icon icon;
  BioestimulatorsList({
    required this.id,
    required this.item,
    required this.icon,
  });
}

List<BioestimulatorsList> bioestimulatorsList = [
  BioestimulatorsList(
    id: 1,
    item: 'Elleva',
    icon: const Icon(Icons.flash_on_rounded),
  ),
  BioestimulatorsList(
    id: 2,
    item: 'Rediesse',
    icon: const Icon(Icons.flash_on_rounded),
  ),
  BioestimulatorsList(
    id: 3,
    item: 'Sculptra',
    icon: const Icon(Icons.flash_on_rounded),
  ),
  BioestimulatorsList(
    id: 4,
    item: 'AestheFill',
    icon: const Icon(Icons.flash_on_rounded),
  ),
  BioestimulatorsList(
    id: 5,
    item: 'HarmonyCa',
    icon: const Icon(Icons.flash_on_rounded),
  ),
  BioestimulatorsList(
    id: 6,
    item: 'Fios filler',
    icon: const Icon(Icons.flash_on_rounded),
  ),
  BioestimulatorsList(
    id: 7,
    item: 'Fios de sustentação',
    icon: const Icon(Icons.flash_on_rounded),
  ),
];
