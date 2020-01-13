import 'package:flutter/material.dart';

class MatchItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text("Match Item"),
        ),
        IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {},
          color: Theme.of(context).errorColor,
        ),
      ],
    );
  }
}
