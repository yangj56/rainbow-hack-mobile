import 'package:flutter/material.dart';
import 'package:rainbow_hack/models/guild_post.dart';
import 'package:rainbow_hack/widgets/post_item.dart';
import '../mocks/dummy_post.dart';

class GuildWallScreen extends StatefulWidget {
  static const routeName = '/guildwall';

  @override
  _GuildWallScreenState createState() => _GuildWallScreenState();
}

class _GuildWallScreenState extends State<GuildWallScreen> {
  List<GuildPost> guildPost;
  final _formKey = GlobalKey<FormState>();

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
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            onSaved: _updateGuildPost,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                  _formKey.currentState.save();
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                "Post your message",
                textAlign: TextAlign.left,
              ),
            ),
            _buildForm(),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  color: Colors.lightBlueAccent,
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
            )
          ]),
    );
  }
}
