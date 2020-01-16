import 'package:flutter/material.dart';

class FeaturedVolunteerItem extends StatelessWidget {
  final String id;
  final String avatar;
  final String name;
  final int hours;
  final String description;

  FeaturedVolunteerItem({
    @required this.id,
    @required this.avatar,
    @required this.description,
    @required this.name,
    @required this.hours,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        elevation: 1,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(2),
                      topRight: Radius.circular(2)),
                  child: Image.asset(
                    avatar,
                    height: 130,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 5,
                  child: Container(
                    height: 60,
                    width: 100,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(
                      "HERO: $name",
                      style: Theme.of(context).textTheme.display2,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Volunteer ${hours.toString()} hours",
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                ),
                Icon(Icons.timer, color: Colors.black, size: 20.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
