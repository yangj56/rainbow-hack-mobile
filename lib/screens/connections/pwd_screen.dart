import 'package:flutter/material.dart';
import 'package:rainbow_hack/screens/connections/pwd_list.dart';
import 'package:rainbow_hack/widgets/menu_drawer.dart';

class PWDScreen extends StatefulWidget {
  static const routeName = '/connections';

  PWDScreen();

  @override
  _PWDScreenState createState() => _PWDScreenState();
}

class _PWDScreenState extends State<PWDScreen> {
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
      body: PwdList(),
    );
  }
}
