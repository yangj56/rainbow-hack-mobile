import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/match_list.dart';
import 'package:rainbow_hack/widgets/menu_drawer.dart';

class MatchScreen extends StatelessWidget {
  static String routeName = "/matchscreen";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('You have been matched!'),
        ),
        drawer: MainDrawer(),
        body: MatchList(),
      ),
    );
  }
}
