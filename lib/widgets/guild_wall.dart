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

  Widget _buildForm(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: new InputDecoration(
              border: new OutlineInputBorder(
                borderSide:
                    new BorderSide(color: Theme.of(context).primaryColorLight),
              ),
              hintText: 'Tell us about yourself',
              labelText: 'Post',
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0),
            child: RaisedButton(
              onPressed: () {
                _formKey.currentState.save();
              },
              child: Text('Post'),
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Kampong wall",
            style: Theme.of(context).textTheme.display1,
          ),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
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
