import 'package:flutter/material.dart';

class PwdModal extends StatelessWidget {
  final int index;

  PwdModal({
    @required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment(1.05, -1.02),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Align(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/image/person1.jpeg'),
                      radius: 50,
                    ),
                  ),
                  Container(child: Text('Julia, 16')),
                  Container(
                    child: Text(
                      'Yishun',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
									Divider(),
                  Expanded(
                    child: ListView(
                      children: <Widget>[
												ListTile(
													contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          title: Text(
                            'About Me',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          subtitle: Text(
                            'Watch my eyes\n\u{2022} No - Look Up\n\u{2022} Yes - Look Down/Nod Slightly\n\u{2022} Don\'t Know - Look Sideways',
                            style: TextStyle(fontSize: 12, height: 1.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Connect!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
