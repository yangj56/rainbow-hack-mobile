import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rainbow_hack/utils/string.dart';

class PostItem extends StatelessWidget {
  final String id;
  final String userName;
  final String userAvatar;
  final String userPost;
  final DateTime dateTime;

  PostItem({
    @required this.id,
    @required this.userName,
    @required this.userAvatar,
    @required this.userPost,
    @required this.dateTime,
  });

  Widget _postItem(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(userAvatar),
                  maxRadius: 40,
                ),
              ],
            ),
          ),
          Container(
            width: 240,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(userName),
                    ),
                    Container(
                      child: Text(
                        '${DateFormat.Hm().format(dateTime)}',
                        style: Theme.of(context).textTheme.display1,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    truncateWithEllipsis(40, userPost),
                    style: Theme.of(context).textTheme.display4,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 14,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "24",
                            style:
                                TextStyle(color: Colors.black45, fontSize: 12),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "7 comments",
                            style:
                                TextStyle(color: Colors.black45, fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black38,
                  thickness: 2,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.favorite,
                            color: Colors.black45,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "LIKE",
                            style: Theme.of(context).textTheme.display4,
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.reply,
                            color: Colors.black45,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "COMMENT",
                            style: Theme.of(context).textTheme.display4,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: _postItem(context),
      ),
    );
  }
}
