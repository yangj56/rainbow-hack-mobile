import 'package:flutter/material.dart';

enum EVENT_TYPE {
  Past,
  New,
}

class Events {
  final String id;
  final String imageUrl;
  final String eventTitle;
  final String eventDescription;
  final DateTime dateTime;
  final EVENT_TYPE eventType;

  Events({
    @required this.id,
    @required this.imageUrl,
    @required this.eventTitle,
    @required this.eventDescription,
    @required this.dateTime,
    @required this.eventType,
  });
}
