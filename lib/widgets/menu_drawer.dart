import 'package:flutter/material.dart';
import 'package:rainbow_hack/screens/dashboard_screen.dart';
import 'package:rainbow_hack/screens/events_screen.dart';
import 'package:rainbow_hack/screens/group_screen.dart';
import 'package:rainbow_hack/screens/kampong_screen.dart';
import 'package:rainbow_hack/screens/profile_screen.dart';
import 'package:rainbow_hack/screens/connections/pwd_screen.dart';
import 'package:rainbow_hack/screens/requests_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(
      String title, IconData icon, Function tapHandler, bool hasBadget) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
      ),
      onTap: tapHandler,
      trailing: hasBadget
          ? Container(
              padding: EdgeInsets.only(right: 50),
              height: 14,
              width: 14,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
            )
          : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.only(top: 50, left: 20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("assets/image/person1.jpeg"),
                ),
                Text("Hello you")
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Profile', Icons.people, () {
            Navigator.of(context).pushReplacementNamed(ProfileScreen.routeName);
          }, false),
          buildListTile('Home', Icons.people, () {
            Navigator.of(context)
                .pushReplacementNamed(DashboardScreen.routeName);
          }, false),
          buildListTile('My Kampong', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(KampongScreen.routeName);
          }, false),
          buildListTile('Connections', Icons.people, () {
            Navigator.of(context).pushReplacementNamed(PWDScreen.routeName);
          }, false),
          buildListTile('Requests', Icons.settings, () {
            Navigator.of(context)
                .pushReplacementNamed(RequestsScreen.routeName);
          }, true),
          buildListTile('Groups', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(GroupScreen.routeName);
          }, false),
          buildListTile('Events', Icons.event, () {
            Navigator.of(context).pushReplacementNamed(EventsScreen.routeName);
          }, false),
          buildListTile('Settings', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed("/");
          }, false),
        ],
      ),
    );
  }
}
