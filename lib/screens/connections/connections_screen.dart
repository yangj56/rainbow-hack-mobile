import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/Pwd/pwd_list.dart';
import 'package:rainbow_hack/widgets/menu_drawer.dart';

class ConnectionsScreen extends StatefulWidget {
  static const routeName = '/connections';

  ConnectionsScreen();

  @override
  _ConnectionsScreenState createState() => _ConnectionsScreenState();
}

class _ConnectionsScreenState extends State<ConnectionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Connections"),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: PwdList(isOnboarding: false),
    );
  }
}
