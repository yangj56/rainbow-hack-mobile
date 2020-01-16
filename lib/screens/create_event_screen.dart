import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rainbow_hack/models/guild_post.dart';
import '../mocks/dummy_post.dart';

class CreateEventScreen extends StatefulWidget {
  static const routeName = '/createevent';

  CreateEventScreen();

  @override
  _CreateEventScreenState createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
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
    log(context.toString());
    return Scaffold(
        body: Container(
      color: Colors.white,
      margin: EdgeInsets.all(10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                "Create Event",
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                "Event Name",
                style: Theme.of(context).textTheme.subtitle,
              ),
            ),

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
                      Navigator.pushReplacementNamed(context, '/dashboard');
                    },
                    child: Text('Create Event'))),
            // _buildForm(),
          ]),
    ));
  }
}
