import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/menu_drawer.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New App Bar"),
      ),
      drawer: MainDrawer(),
      body: Container(
        child: Text("Profile"),
      ),
    );
  }
}
