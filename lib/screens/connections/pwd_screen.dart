import 'package:flutter/material.dart';
import 'package:rainbow_hack/screens/connections/pwd_list.dart';
import 'package:rainbow_hack/widgets/menu_drawer.dart';

class PwdScreen extends StatefulWidget {
  static const routeName = '/connections';

  PwdScreen();

  @override
  _PwdScreenState createState() => _PwdScreenState();
}

class _PwdScreenState extends State<PwdScreen> {
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
