import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(userAvatar),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    userName,
                    style: Theme.of(context).textTheme.body2,
                  ),
                ),
                Container(
                  child: Text(
                    userPost,
                    style: Theme.of(context).textTheme.display1,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
