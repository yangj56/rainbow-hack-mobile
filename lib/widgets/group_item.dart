import 'package:flutter/material.dart';

class GroupItem extends StatelessWidget {
  final String name;

  GroupItem(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(name),
    );
  }
}
