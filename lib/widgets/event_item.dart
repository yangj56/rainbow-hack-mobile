import 'package:flutter/material.dart';
import 'package:rainbow_hack/models/events.dart';
import '../utils/string.dart';

class EventItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final EVENT_TYPE eventType;
  final DateTime dateTime;
  EventItem({
    @required this.title,
    @required this.id,
    @required this.imageUrl,
    @required this.eventType,
    @required this.dateTime,
    @required this.description,
  });

  String get eventText {
    switch (eventType) {
      case EVENT_TYPE.New:
        return 'New';
        break;
      case EVENT_TYPE.Past:
        return 'Hard';
        break;
      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.asset(
                    imageUrl,
                    height: 100,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "$title",
                    style: Theme.of(context).textTheme.body1,
                  ),
                  Text(
                    truncateWithEllipsis(20, description),
                    style: Theme.of(context).textTheme.body2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
