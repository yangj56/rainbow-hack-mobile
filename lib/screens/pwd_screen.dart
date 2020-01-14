import 'package:flutter/material.dart';

class PWDScreen extends StatefulWidget {
  static const routeName = '/pwd';

  @override
  _PWDScreenState createState() => _PWDScreenState();
}

class _PWDScreenState extends State<PWDScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: new PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: new Container(
            color: Colors.green,
            child: new SafeArea(
              child: Column(
                children: <Widget>[
                  new Expanded(child: new Container()),
                  new TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(Icons.directions_car),
                        text: "Car",
                      ),
                      Tab(
                        icon: Icon(Icons.directions_car),
                        text: "Car",
                      ),
                      Tab(
                        icon: Icon(Icons.directions_car),
                        text: "Car",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
