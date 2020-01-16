import 'package:flutter/material.dart';
import 'package:rainbow_hack/enums/request_statuses.dart';

class Requests {
  final String id;
  final String title;
  final String requestor;
  final String dateRequested;
  final String dateDue;
  final RequestStatuses status;

  Requests({
    @required this.id,
    @required this.title,
    @required this.requestor,
    @required this.dateRequested,
    @required this.dateDue,
    @required this.status,
  });
}
