import 'package:flutter/material.dart';
import 'package:rainbow_hack/utils/pwd_data.dart';

class PwdProfileTab extends StatelessWidget {
  final int index;
  PwdProfileTab({@required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListView(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            title: Text(
              'About Me',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            subtitle: Text(
              pwdData[index]['about'],
              style: TextStyle(fontSize: 12, height: 1.5),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            title: Text(
              'What I Like',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            subtitle: Text(
              pwdData[index]['like'],
              style: TextStyle(fontSize: 12, height: 1.5),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            title: Text(
              'What I Dislike',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            subtitle: Text(
              pwdData[index]['dislike'],
              style: TextStyle(fontSize: 12, height: 1.5),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            title: Text(
              'How I Communicate',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            subtitle: Text(
              pwdData[index]['comm'],
              style: TextStyle(fontSize: 12, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
