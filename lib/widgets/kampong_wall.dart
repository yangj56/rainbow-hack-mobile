import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/guild_wall.dart';

class KampongWall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}
