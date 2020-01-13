import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/match_item.dart';

class MatchScreen extends StatefulWidget {
  static const routeName = '/match';

  @override
  _MatchScreenState createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Match"),
      ),
      body: Column(
        children: <Widget>[
          MatchItem(),
        ],
      ),
    );
  }
}
