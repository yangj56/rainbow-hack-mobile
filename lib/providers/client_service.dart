import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:rainbow_hack/models/client.dart';
import 'package:rainbow_hack/models/http_exception.dart';

class ClientService extends Client with ChangeNotifier {
  // Getter
  List<Client> get client {
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
