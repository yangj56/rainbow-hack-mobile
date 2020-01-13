import 'dart:async';
import 'package:flutter/material.dart';

class Authentication with ChangeNotifier {
  DateTime loginTime;
  bool isLogin;

  // Getter
  bool get getAuthenticationStatus {
    return isLogin;
  }

  // Setter
  Future<void> login() async {
    print("Wait begins");
    await Future.delayed(Duration(seconds: 2));
    loginTime = DateTime.now();
    print("Wait is over");
    isLogin = true;
    notifyListeners();
  }

  void logout() {
    isLogin = false;
    loginTime = null;
    notifyListeners();
  }
}
