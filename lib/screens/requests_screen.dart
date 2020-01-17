import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/menu_drawer.dart';
import 'package:rainbow_hack/screens/requests_assigned_screen.dart';
import 'package:rainbow_hack/screens/requests_other_screen.dart';

class RequestsScreen extends StatelessWidget {
  static const routeName = '/requests';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Request'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'My Assigned',
              ),
              Tab(
                text: 'Others',
              )
            ],
          ),
        ),
        drawer: MainDrawer(),
        body: TabBarView(
          children: <Widget>[RequestsAssigned(), RequestsOther()],
        ),
      ),
    );
  }
}
