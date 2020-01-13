import 'package:flutter/material.dart';
import 'package:rainbow_hack/screens/bottom_tab_screen.dart';

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
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, BottomTabScreen.routeName, (_) => false);
          },
          color: Theme.of(context).errorColor,
        ),
      ],
    );
  }
}
