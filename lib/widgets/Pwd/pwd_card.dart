import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/Pwd/pwd_modal.dart';

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
      elevation: 0,
      margin: new EdgeInsets.symmetric(horizontal: 0, vertical: 2.0),
      child: Container(
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/image/person1.jpeg"),
              radius: 30,
            ),
          ),
          title: Text(
            name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: Text(
            'Age $age, $disability', style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          onTap: () {
            showDialog(
              context: context, builder: (BuildContext context) => PwdModal(index: 1),
            );
          },
        ),
      ),
    );
  }
}
