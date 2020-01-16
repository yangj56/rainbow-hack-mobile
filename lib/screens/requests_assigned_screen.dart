import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/request_item.dart';
import '../mocks/dummy_requests_assigned.dart';

class RequestsAssigned extends StatefulWidget {
  @override
  _RequestsAssignedState createState() => _RequestsAssignedState();
}

class _RequestsAssignedState extends State<RequestsAssigned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dummyRequestsAssigned.length,
        itemBuilder: (BuildContext ctx, int index) {
          return RequestItem(
            dateDue: dummyRequestsAssigned[index].dateDue,
            dateRequested: dummyRequestsAssigned[index].dateRequested,
            requestor: dummyRequestsAssigned[index].requestor,
            status: dummyRequestsAssigned[index].status,
            id: dummyRequestsAssigned[index].id,
            title: dummyRequestsAssigned[index].title,
          );
        },
      ),
    );
  }
}
