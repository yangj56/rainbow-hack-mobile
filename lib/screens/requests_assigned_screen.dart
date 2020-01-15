import 'package:flutter/material.dart';

class RequestsAssigned extends StatefulWidget {
  @override
  _RequestsAssignedState createState() => _RequestsAssignedState();
}

class _RequestsAssignedState extends State<RequestsAssigned> {
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
                        child: Text("Buy honey",
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.green)),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                        child: Text(
                          "Requested by: Winnie the Pooh",
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                        child: Text(
                          "Date Request: 28th Feb 5:30pm",
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                        child: Text(
                          "Due Date: 29th Feb 5:30pm",
                          style: TextStyle(fontSize: 18.0),
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
                          "Complete",
                          style: TextStyle(color: Colors.green),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.check_circle,
                            size: 35.0,
                            color: Colors.green,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
                        child: Text("Fix lightbulb",
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).accentColor)),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                        child: Text(
                          "Requested by: Piglet",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Theme.of(context).accentColor),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                        child: Text(
                          "Date Request: 28th Feb 5:30pm",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Theme.of(context).accentColor),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                        child: Text(
                          "Due Date: 1st Mar 4:00pm",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Theme.of(context).accentColor),
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
                          "Incomplete",
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.panorama_fish_eye,
                            size: 35.0,
                            color: Theme.of(context).accentColor,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
                        child: Text("Buy Diapers",
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).accentColor)),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                        child: Text(
                          "Requested by: Kanga & Little Roo",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Theme.of(context).accentColor),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                        child: Text(
                          "Date Request: 1st Feb 9:00am",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Theme.of(context).accentColor),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                        child: Text(
                          "Due Date: 1st Mar 10:00pm",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Theme.of(context).accentColor),
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
                          "Incomplete",
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.panorama_fish_eye,
                            size: 35.0,
                            color: Theme.of(context).accentColor,
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
              )
            ],
          );
        },
        itemCount: 1,
      ),
    );
  }
}
