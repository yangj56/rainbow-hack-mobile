import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/event_item.dart';
import '../mocks/dummy_event.dart';

class Dashboard extends StatefulWidget {
  static const routeName = '/dashboard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget> _buildEvents() {
    List<Widget> list = dummyEvents.map((event) {
      return Container(
        width: 200,
        height: 180,
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

  List<Widget> _buildUpcomingEvents() {
    List<Widget> list = dummyEvents.map((event) {
      return Container(
        width: 200,
        height: 180,
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

  Widget _userProfile(BuildContext ctx) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.star, size: 50),
            title: Text('Lebron James'),
            subtitle: Text(
              'Quote of the day',
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _guildEvents() {
    List<Widget> list = dummyEvents.map((event) {
      return Container(
        width: 200,
        height: 180,
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
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _userProfile(context),
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Events",
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2.0),
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _buildEvents(),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Upcoming",
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2.0),
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _buildUpcomingEvents(),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Upcoming",
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2.0),
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _buildUpcomingEvents(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
