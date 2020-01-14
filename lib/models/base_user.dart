import 'package:flutter/foundation.dart';
import 'package:rainbow_hack/enums/gender.dart';
import 'package:rainbow_hack/enums/language.dart';
import 'package:rainbow_hack/enums/race.dart';
import 'package:rainbow_hack/models/kampung.dart';

class BaseUser  {
  final String id;
  String name;
  String dob;
  Gender gender;
	String email;
	int mobileNo;
	String address;
  int postCode;
  String country;
	Race race;
	Language language;
	String educationLevel;
	String occupation;
  Kampung kampung;

  BaseUser({
    @required this.id,
    @required this.name,
    @required this.dob,
    @required this.gender,
    @required this.email,
    @required this.mobileNo,
    @required this.address,
    @required this.postCode,
    @required this.country,
    @required this.race,
    @required this.language,
    @required this.educationLevel,
    @required this.occupation
  });
}

