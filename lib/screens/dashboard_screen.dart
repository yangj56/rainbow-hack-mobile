import 'package:flutter/material.dart';
import 'package:rainbow_hack/mocks/dummy_event.dart';
import 'package:rainbow_hack/mocks/dummy_pwd.dart';
import 'package:rainbow_hack/widgets/event_item.dart';
import 'package:rainbow_hack/widgets/feature_pwd_item.dart';
import 'package:rainbow_hack/widgets/inspiring_story.dart';
import 'package:rainbow_hack/widgets/menu_drawer.dart';

class DashboardScreen extends StatefulWidget {
  static const routeName = '/dashboardscreen';

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Widget> _featuredPWDs() {
    List<Widget> list = dummyPwds.map((pwd) {
      return FeaturedPWDItem(
        id: pwd.id,
        age: pwd.age,
        avatar: pwd.avatar,
        description: pwd.description,
        medicalCondition: pwd.medicalCondition,
        name: pwd.name,
      );
    }).toList();
    return list;
  }

  List<Widget> _guildEvents() {
    List<Widget> list = dummyEvents.map((event) {
      return EventItem(
        id: event.id,
        imageUrl: event.imageUrl,
        eventType: event.eventType,
        title: event.eventTitle,
        description: event.eventDescription,
        dateTime: event.dateTime,
      );
    }).toList();
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: MainDrawer(),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InspiringStory(),
              Divider(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 2.0),
                height: 260,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: _featuredPWDs(),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 2.0),
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: _guildEvents(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
