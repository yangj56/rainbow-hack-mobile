import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/Pwd/pwd_card.dart';

class PwdList extends StatefulWidget {
  @override
  _PwdListState createState() => _PwdListState();
}

class _PwdListState extends State<PwdList> {
  List<Map<String, Object>> _connections = [
    {'name': 'Julia', 'age': '15', 'disability': 'Cerebral Palsy'},
    {'name': 'Tim', 'age': '18', 'disability': 'Epilepsy'},
    {'name': 'Sabrina', 'age': '16', 'disability': 'Visual Impairment'},
    {'name': 'Ali', 'age': '11', 'disability': 'Deaf'},
    {'name': 'Viknesh', 'age': '13', 'disability': 'ALS'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: _connections.length,
          itemBuilder: (BuildContext context, int index) {
            return new PwdCard(
              name: _connections[index]['name'],
              age: _connections[index]['age'],
              disability: _connections[index]['disability'],
            );
          }),
    );
  }
}
