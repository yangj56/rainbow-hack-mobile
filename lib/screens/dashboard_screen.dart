import 'package:flutter/material.dart';
import 'package:rainbow_hack/mocks/dummy_event.dart';
import 'package:rainbow_hack/mocks/dummy_pwd.dart';
import 'package:rainbow_hack/mocks/dummy_stories.dart';
import 'package:rainbow_hack/widgets/event_item.dart';
import 'package:rainbow_hack/widgets/feature_pwd_item.dart';
import 'package:rainbow_hack/widgets/menu_drawer.dart';

class DashboardScreen extends StatefulWidget {
  static const routeName = '/dashboardscreen';

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Widget _dailyStory(BuildContext ctx) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Our Stories",
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.title,
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/person1.jpeg"),
                ),
                title: Text('Demar Derozan'),
                subtitle: Text(
                  'Volunteer',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      "assets/image/volunteer1.jpeg",
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      height: 90,
                      child: Text(
                        stories,
                        style: Theme.of(context).textTheme.body2,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

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
      return Container(
        width: 300,
        height: 400,
        child: EventItem(
          id: event.id,
          imageUrl: event.imageUrl,
          eventType: event.eventType,
          title: event.eventTitle,
          description: event.eventDescription,
          dateTime: event.dateTime,
        ),
      );
    }).toList();
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MainDrawer(),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _dailyStory(context),
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
            ],
          ),
        ),
      ),
    );
  }
}
