import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
    return Container(
      height: 250,
      width: 200,
      child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          elevation: 1,
          // margin: EdgeInsets.all(10),
          child: Container(
            child: Wrap(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(2)),
                      child: Image.asset(
                        imageUrl,
                        height: 100,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 5,
                      left: 5,
                      child: Container(
                        height: 40,
                        width: 100,
                        color: Colors.black54,
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        child: Text(
                          "$title",
                          style: Theme.of(context).textTheme.display2,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          '${DateFormat.yMd().format(dateTime)}',
                          style: Theme.of(context).textTheme.display3,
                        ),
                      ),
                      Icon(Icons.calendar_today,
                          color: Colors.black54, size: 15.0),
                    ],
                  ),
                ),
                Container(
                    child: FlatButton(
                        onPressed: () {},
                        child: Text('Join Event',
                            style: Theme.of(context).textTheme.display1))),
              ],
            ),
          )),
    );
  }
}
