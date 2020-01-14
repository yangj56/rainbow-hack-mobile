import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rainbow_hack/models/http_exception.dart';

class User with ChangeNotifier {
  final String id;
  String name;
  String dob;
  String sex;
	String email;
	int mobileNo;
	String address;
  int postCode;
  String country;
	String race;
	List<dynamic> language;
	String educationLevel;
	String occupation;
  String roles;
  int hours;
  List<dynamic> guildIds;
  List<dynamic> friends;
  // More

  // Name Constructor
  User({@required this.id});
  // Position Constructor
  // User(this.id);

  // Getter
  List<User> get users {
    return [];
  }

  // Setter
  void setUser(bool newValue) {
    notifyListeners();
  }

  // Async task
  Future<void> getUserInformation() async {
    //Do Async task
    const url = 'Sample url';
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      notifyListeners();
    } catch (error) {
      throw HttpException('Could not get user.');
    }
  }
}
