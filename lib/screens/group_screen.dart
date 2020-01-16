import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/group_achievement.dart';
import 'package:rainbow_hack/widgets/group_list.dart';
import 'package:rainbow_hack/widgets/menu_drawer.dart';

class GroupScreen extends StatelessWidget {
  static String routeName = "/group";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Groups'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'List',
              ),
              Tab(
                text: 'Achievements',
              )
            ],
          ),
        ),
        drawer: MainDrawer(),
        body: TabBarView(
          children: <Widget>[GroupList(), GroupAchievement()],
        ),
      ),
    );
  }
}
