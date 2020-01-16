import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/request_item.dart';
import '../mocks/dummy_requests_other.dart';

class RequestsOther extends StatefulWidget {
  @override
  _RequestsOtherState createState() => _RequestsOtherState();
}

class _RequestsOtherState extends State<RequestsOther> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dummyRequestsOther.length,
        itemBuilder: (BuildContext ctx, int index) {
          return RequestItem(
            dateDue: dummyRequestsOther[index].dateDue,
            dateRequested: dummyRequestsOther[index].dateRequested,
            requestor: dummyRequestsOther[index].requestor,
            status: dummyRequestsOther[index].status,
            id: dummyRequestsOther[index].id,
            title: dummyRequestsOther[index].title,
          );
        },
      ),
    );
  }
}
