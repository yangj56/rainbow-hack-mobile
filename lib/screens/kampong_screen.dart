import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/menu_drawer.dart';

class KampongScreen extends StatelessWidget {
  static String routeName = "/kampong";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New App Bar"),
      ),
      drawer: MainDrawer(),
      body: Container(
        child: Text("Testing"),
      ),
    );
  }
}
