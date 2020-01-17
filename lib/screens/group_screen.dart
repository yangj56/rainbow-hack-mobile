import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/group_achievement.dart';
import 'package:rainbow_hack/widgets/group_list.dart';
import 'package:rainbow_hack/widgets/menu_drawer.dart';

class GroupScreen extends StatelessWidget {
  static String routeName = "/group";

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Groups'),
        ),
        drawer: MainDrawer(),
        body: GroupList(),
        bottomNavigationBar: Container(
          height: 50,
          width: screenWidth * 0.8,
          child: FlatButton(
            splashColor: Colors.green,
            highlightColor: Colors.purple,
            color: Theme.of(context).primaryColorLight,
            child: Text('Join Groups',
                style: Theme.of(context).textTheme.display2),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
