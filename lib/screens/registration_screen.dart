import 'package:flutter/material.dart';
import 'package:rainbow_hack/screens/match.dart';

class RegistrationScreen extends StatefulWidget {
  static const routeName = '/registration';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

_submitRegistration(BuildContext ctx) {
  Navigator.of(ctx).pushNamed(MatchScreen.routeName);
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
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
            onPressed: () => _submitRegistration(context),
          ),
          width: screenWidth * 0.8,
          height: 40,
        ),
      ),
    );
  }
}
