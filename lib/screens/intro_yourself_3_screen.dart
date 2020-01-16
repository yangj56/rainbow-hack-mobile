import 'package:flutter/material.dart';
import 'package:rainbow_hack/screens/match_screen.dart';
import 'package:rainbow_hack/widgets/linear_progress_bar.dart';

class IntroYourself3Screen extends StatefulWidget {
  static const routeName = '/intro_yourself_3';

  @override
  _IntroYourself3ScreenState createState() => _IntroYourself3ScreenState();
}

class _IntroYourself3ScreenState extends State<IntroYourself3Screen> {
  List<bool> _selectedLanguages = new List<bool>();
  List<bool> _selectedWorkingStatuses = new List<bool>();

  void initState() {
    super.initState();
    for (int i = 0; i < 5; i++) {
      _selectedLanguages.add(false);
    }
    for (int i = 0; i < 3; i++) {
      _selectedWorkingStatuses.add(false);
    }
  }

  Container introduceYourself(screenHeight) {
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

  Column renderAllLanguages(double screenWidth) {
    return Column(children: <Widget>[
      CheckboxListTile(
        activeColor: Theme.of(context).buttonColor,
        controlAffinity: ListTileControlAffinity.leading,
        title: Text('English'),
        value: _selectedLanguages[0],
        onChanged: (bool value) {
          setState(() {
            _selectedLanguages[0] = value;
          });
        },
      ),
      CheckboxListTile(
        activeColor: Theme.of(context).buttonColor,
        controlAffinity: ListTileControlAffinity.leading,
        title: Text('Mandarin'),
        value: _selectedLanguages[1],
        onChanged: (bool value) {
          setState(() {
            _selectedLanguages[1] = value;
          });
        },
      ),
      CheckboxListTile(
        activeColor: Theme.of(context).buttonColor,
        controlAffinity: ListTileControlAffinity.leading,
        title: Text('Melayu'),
        value: _selectedLanguages[2],
        onChanged: (bool value) {
          setState(() {
            _selectedLanguages[2] = value;
          });
        },
      ),
      CheckboxListTile(
        activeColor: Theme.of(context).buttonColor,
        controlAffinity: ListTileControlAffinity.leading,
        title: Text('Tamil'),
        value: _selectedLanguages[3],
        onChanged: (bool value) {
          setState(() {
            _selectedLanguages[3] = value;
          });
        },
      ),
      CheckboxListTile(
        activeColor: Theme.of(context).buttonColor,
        controlAffinity: ListTileControlAffinity.leading,
        title: Row(children: [
          Text('Others'),
          new Container(
              margin: EdgeInsets.only(left: 20),
              width: screenWidth * 0.55,
              child: TextField())
        ]),
        value: _selectedLanguages[4],
        onChanged: (bool value) {
          setState(() {
            _selectedLanguages[4] = value;
          });
        },
      ),
    ]);
  }

  Column renderWorkingStatuses() {
    return Column(children: <Widget>[
      CheckboxListTile(
        activeColor: Theme.of(context).buttonColor,
        controlAffinity: ListTileControlAffinity.leading,
        title: Text('Working'),
        value: _selectedWorkingStatuses[0],
        onChanged: (bool value) {
          setState(() {
            _selectedWorkingStatuses[0] = value;
          });
        },
      ),
      CheckboxListTile(
        activeColor: Theme.of(context).buttonColor,
        controlAffinity: ListTileControlAffinity.leading,
        title: Text('Studying'),
        value: _selectedWorkingStatuses[1],
        onChanged: (bool value) {
          setState(() {
            _selectedWorkingStatuses[1] = value;
          });
        },
      ),
      CheckboxListTile(
        activeColor: Theme.of(context).buttonColor,
        controlAffinity: ListTileControlAffinity.leading,
        title: Text('Not employed'),
        value: _selectedWorkingStatuses[2],
        onChanged: (bool value) {
          setState(() {
            _selectedWorkingStatuses[2] = value;
          });
        },
      ),
    ]);
  }

  Container nextButton(
      double screenHeight, double screenWidth, BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(15.0, 45.0, 15.0, 15.0),
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
            Navigator.of(context).pushReplacementNamed(MatchScreen.routeName);
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: ListView(children: <Widget>[
      Container(
        height: screenHeight * 0.05,
        margin: EdgeInsets.all(15),
      ),
      introduceYourself(screenHeight),
      Center(
          child: LinearProgressBar(
              activeColor: Theme.of(context).buttonColor,
              inactiveColor: Colors.black12,
              currentStep: 3)),
      bodyTexts("I can speak"),
      renderAllLanguages(screenWidth),
      bodyTexts("I am currently"),
      renderWorkingStatuses(),
      nextButton(screenHeight, screenWidth, context)
    ]));
  }
}
