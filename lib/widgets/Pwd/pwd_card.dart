import 'package:flutter/material.dart';
import 'package:rainbow_hack/screens/match.dart';

class PwdCard extends StatelessWidget {
  final String name;
  final String age;
  final String disability;

  PwdCard({
    @required this.name,
    @required this.age,
    @required this.disability,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24))),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/image/person1.jpeg"),
              radius: 30,
            ),
          ),
          title: Text(
            name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MatchScreen()),
            );
          },
        ),
      ),
    );
  }
}
