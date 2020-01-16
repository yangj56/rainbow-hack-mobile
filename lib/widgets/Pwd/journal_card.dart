import 'package:flutter/material.dart';

class JournalCard extends StatelessWidget {
  final String title;
  final String content;
  final String date;

  JournalCard({
    @required this.title,
    @required this.content,
    @required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: new EdgeInsets.symmetric(horizontal: 0, vertical: 2.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Text(
                      date,
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    Text(
                      content,
                      style: TextStyle(
                        fontSize: 12,
                        height: 1.5,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
