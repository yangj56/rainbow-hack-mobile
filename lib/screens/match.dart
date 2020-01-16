import 'package:flutter/material.dart';

class MatchScreen extends StatefulWidget {
  static const routeName = '/match';

  @override
  _MatchScreenState createState() => _MatchScreenState();
}

_submitMatch(BuildContext ctx) {
  // Navigator.pushNamedAndRemoveUntil(n);
}

class _MatchScreenState extends State<MatchScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Match"),
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.all(30),
        child: Container(
          child: FlatButton(
            splashColor: Colors.green,
            shape: StadiumBorder(),
            highlightColor: Colors.purple,
            color: Colors.red,
            child: Text('Button', style: TextStyle(color: Colors.blue)),
            onPressed: () => _submitMatch(context),
          ),
          width: screenWidth * 0.8,
          height: 40,
        ),
      ),
    );
  }
}
