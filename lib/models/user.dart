import 'package:flutter/foundation.dart';
import 'package:rainbow_hack/enums/interest.dart';
import 'package:rainbow_hack/models/base_user.dart';
import 'package:rainbow_hack/models/client.dart';

class User extends BaseUser {
  String role;
  int hours;
  List<Client> clients;
  List<Interest> interests = <Interest>[];
  // More

  // Name Constructor
  User({@required this.role});
}
