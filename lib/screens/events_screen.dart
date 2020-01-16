import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/menu_drawer.dart';
import 'package:rainbow_hack/screens/create_event_screen.dart';
import 'package:rainbow_hack/widgets/event_item.dart';
import '../mocks/dummy_event.dart';

class EventsScreen extends StatefulWidget {
  static const routeName = '/eventsscreen';

  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
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
    return Scaffold(
        appBar: AppBar(
          title: Text('Events'),
        ),
        drawer: Drawer(
          child: MainDrawer(),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/createevent');
                    },
                    child: Text('Create Event'),
                  ),
                ),
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
              ],
            ),
          ),
        ));
  }
}
