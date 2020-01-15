import 'package:flutter/material.dart';

class RequestsOther extends StatefulWidget {
  @override
  _RequestsOtherState createState() => _RequestsOtherState();
}

class _RequestsOtherState extends State<RequestsOther> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, position) {
          return Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
                        child: Text("Bring me to the park",
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                        child: Text(
                          "Requested by: Mickey Mouse",
                          style: TextStyle(fontSize: 18.0, color: Colors.blue),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                        child: Text(
                          "Date Request: 28th Feb 5:30pm",
                          style: TextStyle(fontSize: 18.0, color: Colors.blue),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                        child: Text(
                          "Due Date: 29th Feb 5:30pm",
                          style: TextStyle(fontSize: 18.0, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Accept!",
                          style: TextStyle(color: Colors.blue),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.send,
                            size: 35.0,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                height: 2.0,
                color: Colors.grey,
              ),
            ],
          );
        },
        itemCount: 1,
      ),
    );
  }
}
