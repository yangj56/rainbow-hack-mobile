import 'package:flutter/material.dart';
import 'package:rainbow_hack/mocks/dummy_volunteer.dart';
import 'package:rainbow_hack/widgets/feature_volunteer_item.dart';
import 'package:rainbow_hack/widgets/guild_wall.dart';

class KampongWall extends StatelessWidget {
  Widget _achievements(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 130,
            padding: EdgeInsets.all(5),
            child: Column(
              children: <Widget>[
                Text(
                  "197 Volunteers",
                  style: Theme.of(context).textTheme.display4,
                )
              ],
            ),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(5),
            child: Column(
              children: <Widget>[
                Text(
                  "29 PWDs",
                  style: Theme.of(context).textTheme.display4,
                )
              ],
            ),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(5),
            child: Column(
              children: <Widget>[
                Text(
                  "23 Events",
                  style: Theme.of(context).textTheme.display4,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _featuredVolunteer() {
    List<Widget> list = dummyVolunteer.map((volunteer) {
      return FeaturedVolunteerItem(
        id: volunteer.id,
        avatar: volunteer.avatar,
        description: volunteer.description,
        name: volunteer.name,
        hours: volunteer.hours,
      );
    }).toList();
    return list;
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return ListView(children: <Widget>[
      _achievements(context),
      Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          "Our Heroes",
          style: Theme.of(context).textTheme.title,
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 2.0),
        height: 180,
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: _featuredVolunteer(),
        ),
      ),
      Container(
        height: screenHeight * 0.6,
        child: Column(
          children: <Widget>[
            GuildWall(),
          ],
        ),
      ),
    ]);
  }
}
