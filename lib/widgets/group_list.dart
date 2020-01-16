import 'package:flutter/material.dart';
import 'package:rainbow_hack/mocks/dummy_group.dart';
import 'package:rainbow_hack/mocks/dummy_strings.dart';
import 'package:rainbow_hack/widgets/group_item.dart';

class GroupList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 230,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              groupsDescription,
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Container(
            height: 450,
            margin: EdgeInsets.all(15),
            child: ListView.builder(
              itemCount: dummyGroups.length,
              itemBuilder: (BuildContext ctx, int index) {
                return GroupItem(dummyGroups[index].name,
                    dummyGroups[index].size, dummyGroups[index].groupInterest);
              },
            ),
          ),
          Container(
            width: screenWidth * 0.9,
            child: FlatButton(
              splashColor: Colors.green,
              highlightColor: Colors.purple,
              color: Theme.of(context).primaryColor,
              child: Text('Join Groups',
                  style: Theme.of(context).textTheme.display2),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
