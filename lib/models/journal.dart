import 'package:flutter/foundation.dart';

class Journal {
  final String id;
  DateTime date;
  String title;
  String content;
  String image;
  // More

  // Name Constructor
  Journal({
    @required this.id,
    @required this.date,
    @required this.title,
    @required this.content
  });
}