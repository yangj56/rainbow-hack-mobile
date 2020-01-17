import 'package:flutter/material.dart';
import 'package:rainbow_hack/models/guild_post.dart';
import 'package:rainbow_hack/widgets/post_item.dart';
import '../mocks/dummy_post.dart';

class GuildWall extends StatefulWidget {
  static const routeName = '/guildwall';

  @override
  _GuildWallState createState() => _GuildWallState();
}

class _GuildWallState extends State<GuildWall> {
  List<GuildPost> guildPost;
  final _formKey = GlobalKey<FormState>();
  String input;
  final TextEditingController _textController = new TextEditingController();

  @override
  void initState() {
    super.initState();
    guildPost = dummyPosts;
  }

  void _updateGuildPost(String value) {
    GuildPost newGuildPost = new GuildPost(
      dateTime: DateTime.now(),
      id: DateTime.now().toIso8601String(),
      userAvatar: "assets/image/person1.jpeg",
      userName: "Me",
      userPost: value,
    );
    setState(() {
      guildPost.insert(0, newGuildPost);
    });
    _textController.clear();
  }

  Widget _buildForm(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Form(
      key: _formKey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: screenWidth * 0.7,
            padding: EdgeInsets.only(top: 6),
            child: SizedBox(
              height: 40,
              child: TextFormField(
                controller: _textController,
                decoration: new InputDecoration(
                  hintText: 'Say something here',
                  prefixText: ' ',
                  suffixStyle: const TextStyle(color: Colors.green),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onSaved: _updateGuildPost,
              ),
            ),
          ),
          Container(
            width: screenWidth * 0.2,
            padding: EdgeInsets.only(left: 15),
            child: RaisedButton(
              onPressed: () {
                _formKey.currentState.save();
              },
              child: Text('Post'),
              color: Theme.of(context).primaryColorLight,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: screenHeight * 0.6,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Container(
                        child: ListView.builder(
                          padding: const EdgeInsets.all(8),
                          itemCount: guildPost.length,
                          itemBuilder: (BuildContext ctx, int index) {
                            return PostItem(
                              id: guildPost[index].id,
                              userAvatar: guildPost[index].userAvatar,
                              userName: guildPost[index].userName,
                              dateTime: guildPost[index].dateTime,
                              userPost: guildPost[index].userPost,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          _buildForm(context),
                        ],
                      ),
                    ),
                  )
                ]),
          ),
        ]);
  }
}
