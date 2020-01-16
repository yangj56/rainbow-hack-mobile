import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/Pwd/pwd_card.dart';

List<Map<String, Object>> _connections = [
    {'name': 'Julia', 'age': '15', 'disability': 'Cerebral Palsy'},
    {'name': 'Tim', 'age': '18', 'disability': 'Epilepsy'},
    {'name': 'Sabrina', 'age': '16', 'disability': 'Visual Impairment'},
    {'name': 'Ali', 'age': '11', 'disability': 'Deaf'},
    {'name': 'Viknesh', 'age': '13', 'disability': 'ALS'},
  ];
class PwdList extends StatelessWidget {
  final bool isOnboarding;

  PwdList({
    @required this.isOnboarding,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: _connections.length,
          itemBuilder: (BuildContext context, int index) {
            return new PwdCard(
              name: _connections[index]['name'],
              age: _connections[index]['age'],
              disability: _connections[index]['disability'],
              isOnboarding: isOnboarding,
            );
          }),
      ),
    );
  }
}
