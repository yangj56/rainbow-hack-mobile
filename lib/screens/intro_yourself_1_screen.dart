import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/linear_progress_bar.dart';

class IntroYourself1Screen extends StatefulWidget {
  static const routeName = '/intro_yourself_1';
  IntroYourself1Screen();
  @override
  _IntroYourself1State createState() => _IntroYourself1State();
}

class _IntroYourself1State extends State<IntroYourself1Screen> {
  String _buttonSelected;
  void initState() {
    super.initState();
    _buttonSelected = "Volunteer";
  }

  Container introduceYourself(screenHeight, context) {
    return Container(
        height: screenHeight * 0.05,
        margin: EdgeInsets.all(15),
        child: Text(
          "Introduce Yourself",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ));
  }

  Row bodyTexts(texts) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
      Container(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 0, 30.0),
          child: Text(texts, style: TextStyle(fontSize: 22))),
    ]);
  }

  Container nameInput(screenWidth) {
    return Container(
      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0, 30.0),
      width: screenWidth * 0.9,
      child: TextField(
        decoration: InputDecoration(hintText: 'Enter your name'),
      ),
    );
  }

  Container userSelectionButtonSelected(text, context) {
    return Container(
        width: 180,
        height: 80,
        child: FlatButton(
          splashColor: Colors.green,
          highlightColor: Colors.purple,
          color: Theme.of(context).highlightColor,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5.0)),
          child: Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
          onPressed: () {},
        ));
  }

  Container userSelectionButtonNotSelected(text, context) {
    return Container(
        width: 180,
        height: 80,
        child: OutlineButton(
          splashColor: Colors.green,
          highlightColor: Colors.purple,
          color: Colors.white,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5.0)),
          child: Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
          onPressed: () {
            setState(() {
              _buttonSelected = text;
            });
          },
        ));
  }

  Row userSelectionButtons(context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buttonSelected == "Volunteer"
              ? userSelectionButtonSelected("Volunteer", context)
              : userSelectionButtonNotSelected("Volunteer", context),
          _buttonSelected == "Caregiver/Person with disabilities"
              ? userSelectionButtonSelected(
                  "Caregiver/Person with disabilities", context)
              : userSelectionButtonNotSelected(
                  "Caregiver/Person with disabilities", context),
        ]);
  }

  Container nextButton(screenHeight, screenWidth, context) {
    return Container(
        margin: EdgeInsets.fromLTRB(15.0, 300, 15.0, 15.0),
        width: screenWidth * 0.9,
        height: screenHeight * 0.05,
        child: RaisedButton(
          splashColor: Colors.green,
          highlightColor: Colors.purple,
          color: Theme.of(context).buttonColor,
          child: Text(
            'Next',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
          ),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed("/intro_yourself_2");
          },
        ));
  }

  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: screenHeight * 0.05,
            margin: EdgeInsets.all(15),
          ),
          introduceYourself(screenHeight, context),
          Center(
              child: LinearProgressBar(
                  activeColor: Theme.of(context).buttonColor,
                  inactiveColor: Colors.black12,
                  currentStep: 1)),
          bodyTexts("My name is"),
          nameInput(screenWidth),
          bodyTexts("I am signing up as a"),
          userSelectionButtons(context),
          nextButton(screenHeight, screenWidth, context)
        ],
      ),
    );
  }
}
