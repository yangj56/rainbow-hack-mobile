import 'package:flutter/material.dart';
import 'package:rainbow_hack/screens/match.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = '/signup';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
      ),
      body: Column(children: <Widget>[
        Text(
          "Hello world",
          style: Theme.of(context).textTheme.body1,
        ),
        Text(
          "Hello world2",
          style: Theme.of(context).textTheme.body2,
        ),
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
          ),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, MatchScreen.routeName, (_) => false);
          },
        ),
      ]),
    );
  }
}
