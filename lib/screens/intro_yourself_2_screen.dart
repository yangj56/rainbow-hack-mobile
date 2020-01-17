import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/linear_progress_bar.dart';

class IntroYourself2Screen extends StatefulWidget {
  static const routeName = '/intro_yourself_2';

  @override
  _IntroYourself2ScreenState createState() => _IntroYourself2ScreenState();
}

class _IntroYourself2ScreenState extends State<IntroYourself2Screen> {
  List<bool> _selectedInterests = new List<bool>();
  List<bool> _selectedSkills = new List<bool>();

  void initState() {
    super.initState();
    for (int i = 0; i < 6; i++) {
      _selectedInterests.add(false);
      _selectedSkills.add(false);
    }
  }

  Container introduceYourself(screenHeight) {
    return Container(
        height: screenHeight * 0.05,
        margin: EdgeInsets.all(15),
        child: Text(
          "Introduce Yourself",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ));
  }

  Row bodyTexts(texts) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
      Container(
          padding: EdgeInsets.fromLTRB(20.0, 40.0, 0, 20.0),
          child: Text(texts, style: TextStyle(fontSize: 22))),
    ]);
  }

  Widget renderAllInterests() {
    return GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 5.0,
        children: <Widget>[
          CheckboxListTile(
            activeColor: Theme.of(context).buttonColor,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text('Arts & Crafts'),
            value: _selectedInterests[0],
            onChanged: (bool value) {
              setState(() {
                _selectedInterests[0] = value;
              });
            },
          ),
          CheckboxListTile(
            activeColor: Theme.of(context).buttonColor,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text('Gardening'),
            value: _selectedInterests[1],
            onChanged: (bool value) {
              setState(() {
                _selectedInterests[1] = value;
              });
            },
          ),
          CheckboxListTile(
            activeColor: Theme.of(context).buttonColor,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text('Sports & Fitness'),
            value: _selectedInterests[2],
            onChanged: (bool value) {
              setState(() {
                _selectedInterests[2] = value;
              });
            },
          ),
          CheckboxListTile(
            activeColor: Theme.of(context).buttonColor,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text('Music'),
            value: _selectedInterests[3],
            onChanged: (bool value) {
              setState(() {
                _selectedInterests[3] = value;
              });
            },
          ),
          CheckboxListTile(
            activeColor: Theme.of(context).buttonColor,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text('Cooking'),
            value: _selectedInterests[4],
            onChanged: (bool value) {
              setState(() {
                _selectedInterests[4] = value;
              });
            },
          ),
          CheckboxListTile(
            activeColor: Theme.of(context).buttonColor,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text('Technology'),
            value: _selectedInterests[5],
            onChanged: (bool value) {
              setState(() {
                _selectedInterests[5] = value;
              });
            },
          ),
        ]);
  }

  Widget renderSkills() {
    return GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 5.0,
        children: <Widget>[
          CheckboxListTile(
            activeColor: Theme.of(context).buttonColor,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text('First Aid/Medical'),
            value: _selectedSkills[0],
            onChanged: (bool value) {
              setState(() {
                _selectedSkills[0] = value;
              });
            },
          ),
          CheckboxListTile(
            activeColor: Theme.of(context).buttonColor,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text('Facilitation'),
            value: _selectedSkills[1],
            onChanged: (bool value) {
              setState(() {
                _selectedSkills[1] = value;
              });
            },
          ),
          CheckboxListTile(
            activeColor: Theme.of(context).buttonColor,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text('Music Instrument'),
            value: _selectedSkills[2],
            onChanged: (bool value) {
              setState(() {
                _selectedSkills[2] = value;
              });
            },
          ),
          CheckboxListTile(
            activeColor: Theme.of(context).buttonColor,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text('Sign Language'),
            value: _selectedSkills[3],
            onChanged: (bool value) {
              setState(() {
                _selectedSkills[3] = value;
              });
            },
          ),
          CheckboxListTile(
            activeColor: Theme.of(context).buttonColor,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text('Photography'),
            value: _selectedSkills[4],
            onChanged: (bool value) {
              setState(() {
                _selectedSkills[4] = value;
              });
            },
          ),
          CheckboxListTile(
            activeColor: Theme.of(context).buttonColor,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text('Computer'),
            value: _selectedSkills[5],
            onChanged: (bool value) {
              setState(() {
                _selectedSkills[5] = value;
              });
            },
          ),
        ]);
  }

  Container nextButton(screenHeight, screenWidth, context) {
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
            Navigator.of(context).pushReplacementNamed("/intro_yourself_3");
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: ListView(children: <Widget>[
      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
      ),
      introduceYourself(screenHeight),
      Center(
          child: LinearProgressBar(
              activeColor: Theme.of(context).buttonColor,
              inactiveColor: Colors.black12,
              currentStep: 2)),
      bodyTexts("My interests are"),
      renderAllInterests(),
      bodyTexts("I have the following skills"),
      renderSkills(),
      nextButton(screenHeight, screenWidth, context)
    ]));
  }
}
