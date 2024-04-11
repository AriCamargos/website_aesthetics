import 'package:flutter/material.dart';

class FillerList {
  final int id;
  final String item;
  final Icon icon;
  FillerList({
    required this.id,
    required this.item,
    required this.icon,
  });
}

List<FillerList> fillerList = [
  FillerList(
    id: 1,
    item: 'Elleva',
    icon: const Icon(Icons.flash_on_rounded),
  ),
  FillerList(
    id: 2,
    item: 'Rediesse',
    icon: const Icon(Icons.flash_on_rounded),
  ),
  FillerList(
    id: 3,
    item: 'Sculptra',
    icon: const Icon(Icons.flash_on_rounded),
  ),
  FillerList(
    id: 4,
    item: 'AestheFill',
    icon: const Icon(Icons.flash_on_rounded),
  ),
  FillerList(
    id: 5,
    item: 'HarmonyCa',
    icon: const Icon(Icons.flash_on_rounded),
  ),
  FillerList(
    id: 6,
    item: 'Fios filler',
    icon: const Icon(Icons.flash_on_rounded),
  ),
  FillerList(
    id: 7,
    item: 'Fios de sustentação',
    icon: const Icon(Icons.flash_on_rounded),
  ),
];
