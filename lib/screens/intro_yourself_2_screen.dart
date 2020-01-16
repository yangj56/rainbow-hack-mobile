import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/linear_progress_bar.dart';

class IntroYourself2Screen extends StatefulWidget {
  static const routeName = '/intro_yourself_2';

  @override
  _IntroYourself2ScreenState createState() => _IntroYourself2ScreenState();
}

class _IntroYourself2ScreenState extends State<IntroYourself2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: <Widget>[
      Container(
        padding: EdgeInsets.only(top: 60, bottom: 20),
        child: Text("Introduce yourself",
            style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.w800)),
      ),
      Center(
          child: LinearProgressBar(
              activeColor: Theme.of(context).buttonColor,
              inactiveColor: Colors.black12,
              currentStep: 2)),
      Container(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Text("My interests are",
            style: TextStyle(color: Colors.black, fontSize: 20)),
      ),
    ])));
  }
}
