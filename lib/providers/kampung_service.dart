import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:rainbow_hack/models/http_exception.dart';
import 'package:rainbow_hack/models/kampung.dart';

class KampungService extends Kampung with ChangeNotifier {

  // Getter
  List<Kampung> get kampung {
    return [];
  }

  // Setter
  void setClient(bool newValue) {
    notifyListeners();
  }

  // Async task
  Future<void> getClientInformation() async {
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