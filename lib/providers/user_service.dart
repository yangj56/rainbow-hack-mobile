import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:rainbow_hack/models/http_exception.dart';
import 'package:rainbow_hack/models/user.dart';

class UserService extends User with ChangeNotifier {

  // Getter
  List<User> get users {
    return [];
  }

  // Setter
  void setUser(bool newValue) {
    notifyListeners();
  }

  // Async task
  Future<void> getUsersInformation() async {
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
