import 'package:flutter/material.dart';
import 'package:rainbow_hack/mocks/dummy_strings.dart';

class InspiringStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 350,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  "assets/image/volunteer1.jpeg",
                  height: 210,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  height: 90,
                  padding: EdgeInsets.all(5),
                  child: Text(
                    stories,
                    softWrap: true,
                    overflow: TextOverflow.fade,
                    style: Theme.of(context).textTheme.body2,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          child: Text(
                        "Read more",
                        style: new TextStyle(color: Colors.blue),
                      )),
                      Row(
                        children: <Widget>[
                          Icon(Icons.favorite, color: Colors.grey, size: 15.0),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(Icons.bookmark, color: Colors.grey, size: 15.0),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(Icons.share, color: Colors.grey, size: 15.0),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top: 150,
              left: 5,
              child: Container(
                height: 60,
                width: 300,
                color: Colors.black54,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Text(
                  "Inspiring stories of PWDs and their volunteers",
                  style: Theme.of(context).textTheme.display2,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
