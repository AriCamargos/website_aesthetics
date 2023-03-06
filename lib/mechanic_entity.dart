// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MechanicEntity {
  final String name;
  final String services;
  final String localization;
  final String contact;
  MechanicEntity({
    required this.name,
    required this.services,
    required this.localization,
    required this.contact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'services': services,
      'localization': localization,
      'contact': contact,
    };
  }

  factory MechanicEntity.fromMap(Map<String, dynamic> map) {
    return MechanicEntity(
      name: map['name'] as String,
      services: map['services'] as String,
      localization: map['localization'] as String,
      contact: map['contact'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MechanicEntity.fromJson(String source) =>
      MechanicEntity.fromMap(json.decode(source) as Map<String, dynamic>);
}
