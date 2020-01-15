import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/group_item.dart';
import '../mocks/dummy_group.dart';

class GroupScreen extends StatelessWidget {
  static String routeName = "/group";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      color: Colors.red,
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            child: ListView.builder(
              itemCount: dummyGroups.length,
              itemBuilder: (BuildContext ctx, int index) {
                return GroupItem(dummyGroups[index].name);
              },
            ),
          )
        ],
      ),
    );
  }
}
