import 'package:flutter/material.dart';

class PwdProfileTab extends StatelessWidget {
  PwdProfileTab();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListView(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            title: Text(
              'About Me',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            subtitle: Text(
              'I enjoy being out and about. Passionate about yoga and mindfulness. Love music, traveling and hanging out.',
              style: TextStyle(fontSize: 12, height: 1.5),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            title: Text(
              'What I Like',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            subtitle: Text(
              '\u{2022} Walks at the park\n\u{2022} Walks on the water',
              style: TextStyle(fontSize: 12, height: 1.5),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            title: Text(
              'What I Dislike',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            subtitle: Text(
              '\u{2022} No Walks at the park\n\u{2022} No walks on the water',
              style: TextStyle(fontSize: 12, height: 1.5),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            title: Text(
              'How I Communicate',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            subtitle: Text(
              'Watch my eyes\n\u{2022} No - Look Up\n\u{2022} Yes - Look Down/Nod Slightly\n\u{2022} Don\'t Know - Look Sideways',
              style: TextStyle(fontSize: 12, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
