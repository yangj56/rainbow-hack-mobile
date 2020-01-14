import 'package:flutter/foundation.dart';

import 'kampung_wall.dart';

class Kampung {
  final String id;
  String name;
  String description;
  String logo;
  List<KampungWall> kampungWall;

  Kampung({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.logo    
  });

}