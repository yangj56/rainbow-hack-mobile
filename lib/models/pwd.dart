import 'package:flutter/material.dart';

enum MedicalCondition { HEART, LEG, HAND }

class PWD {
  final String id;
  final String avatar;
  final String name;
  final int age;
  final String description;
  final MedicalCondition medicalCondition;

  PWD({
    @required this.id,
    @required this.avatar,
    @required this.name,
    @required this.age,
    @required this.description,
    @required this.medicalCondition,
  });
}
