import 'package:flutter/material.dart';

class GuildWallScreen extends StatefulWidget {
  static const routeName = '/guildwall';

  @override
  _GuildWallScreenState createState() => _GuildWallScreenState();
}

class _GuildWallScreenState extends State<GuildWallScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Guild wall"),
    );
  }
}
