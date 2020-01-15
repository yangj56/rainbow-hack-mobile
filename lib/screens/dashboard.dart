import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/event_item.dart';
import 'package:rainbow_hack/widgets/guild_wall.dart';
import '../mocks/dummy_event.dart';

class Dashboard extends StatefulWidget {
  static const routeName = '/dashboard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String stories =
      "A people person, Malligesvari wanted to help in any way she can. She started volunteering as a Senior Guide, where her knowledge of various languages came in handy with visitors. She then branched out into the Mentoring Programme, helping at-risk youths in primary school.";

  Widget _ourKampong(BuildContext ctx) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Kampung Yishun",
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 100,
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        color: Colors.blue,
                        size: 20.0,
                      ),
                      Text(
                        "97 Volunteers",
                        style: Theme.of(context).textTheme.display1,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.pool,
                        color: Colors.blue,
                        size: 20.0,
                      ),
                      Text(
                        "29 Activities",
                        style: Theme.of(context).textTheme.display1,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.pool,
                        color: Colors.blue,
                        size: 20.0,
                      ),
                      Text(
                        "300 kakis",
                        style: Theme.of(context).textTheme.display1,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  GuildWall(),
                ],
              ),
            ),
          ),
        ]);
  }

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

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _dailyStory(context),
            Divider(),
            _ourKampong(context),
          ],
        ),
      ),
    );
  }
}
