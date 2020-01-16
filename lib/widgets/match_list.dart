import 'package:flutter/material.dart';
import 'package:rainbow_hack/mocks/dummy_pwd.dart';
import 'package:rainbow_hack/mocks/dummy_strings.dart';
import 'package:rainbow_hack/screens/dashboard_screen.dart';
import 'package:rainbow_hack/widgets/match_item.dart';

class MatchList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(top: 30, left: 15, bottom: 15),
              child: Text(
                "Your Kampung: Yishun",
                textAlign: TextAlign.start,
              )),
          Container(
            height: screenHeight * 0.2,
            margin: EdgeInsets.all(15),
            child: Text(
              matchedDescription,
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Container(
            height: screenHeight * 0.4,
            margin: EdgeInsets.all(15),
            child: ListView.builder(
              itemCount: dummyPwds.length,
              itemBuilder: (BuildContext ctx, int index) {
                return MatchItem(dummyPwds[index].name, dummyPwds[index].age,
                    dummyPwds[index].medicalCondition);
              },
            ),
          ),
          Container(
            width: screenWidth * 0.9,
            child: FlatButton(
              splashColor: Colors.green,
              highlightColor: Colors.purple,
              color: Theme.of(context).primaryColor,
              child: Text('Start Connecting',
                  style: Theme.of(context).textTheme.display2),
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(DashboardScreen.routeName);
              },
            ),
          )
        ],
      ),
    );
  }
}
