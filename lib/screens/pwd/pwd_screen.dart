import 'package:flutter/material.dart';
import 'package:rainbow_hack/screens/match.dart';

class PWDScreen extends StatefulWidget {
  static const routeName = '/pwd';

  @override
  _PWDScreenState createState() => _PWDScreenState();
}

class _PWDScreenState extends State<PWDScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: makeBody,
    );
  }
}

final makeBody = Container(
  child: ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: 5,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        elevation: 8.0,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor
          ),
          child: _makeList(context),
        ),
      );
    },
  ),
);

_makeList(BuildContext context) { 
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    leading: Container(
      padding: EdgeInsets.only(right: 12.0),
      decoration: new BoxDecoration(
        border: new Border(
          right: new BorderSide(width: 1.0, color: Colors.white24)
        )
      ),
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/image/person1.jpeg"),
        radius: 30,
      ),
    ),
    title: Text(
      "Julia Jihae Kang",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
    trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MatchScreen()),
      );
    },
  );
}