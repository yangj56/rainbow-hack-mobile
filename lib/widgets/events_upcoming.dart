import 'package:flutter/material.dart';
import 'package:rainbow_hack/mocks/dummy_event.dart';
import 'package:rainbow_hack/widgets/event_item.dart';

class UpcomingEvents extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Kampung events are organised by groups to enable meaningful bonding between PWDs and befrienders. Join one now!",
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2.0),
              height: screenHeight,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: _buildEvents(),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
