import 'package:flutter/material.dart';

class GuildPost {
  final String id;
  final String userName;
  final String userAvatar;
  final String userPost;
  final DateTime dateTime;

  GuildPost({
    @required this.id,
    @required this.userName,
    @required this.userAvatar,
    @required this.userPost,
    @required this.dateTime,
  });
}
