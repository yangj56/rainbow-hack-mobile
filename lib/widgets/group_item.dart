import 'package:flutter/material.dart';
import 'package:rainbow_hack/models/group.dart';

class GroupItem extends StatefulWidget {
  final String name;
  final int memberSize;
  final InterestGroup group;

  GroupItem(this.name, this.memberSize, this.group);

  @override
  _GroupItemState createState() => _GroupItemState();
}

String getText(InterestGroup intGroup, int number) {
  String groupType = "";
  print(intGroup);
  switch (intGroup) {
    case InterestGroup.COOKING:
      groupType = 'Cooking group';
      break;
    case InterestGroup.CYCLING:
      groupType = 'Cycling group';
      break;
    case InterestGroup.GARDENING:
      groupType = 'Gardening group';
      break;
    case InterestGroup.HANDICRAFT:
      groupType = 'Arts & Craft group';
      break;
    case InterestGroup.HIKING:
      groupType = 'Hiking group';
      break;
    default:
      groupType = 'Sports group';
  }
  print(groupType);
  groupType += ", ${number.toString()} joined";
  return groupType;
}

class _GroupItemState extends State<GroupItem> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        margin: EdgeInsets.all(2),
        height: 70,
        width: double.infinity,
        color: Theme.of(context).accentColor,
        child: ListTile(
          onTap: null,
          title: Container(
            child: Row(
              children: <Widget>[
                Checkbox(
                    value: isCheck,
                    activeColor: Colors.cyan,
                    onChanged: (bool value) {
                      setState(() {
                        isCheck = !isCheck;
                      });
                    }),
                CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: Icon(Icons.people, color: Colors.black, size: 30.0),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.name,
                        style: Theme.of(context).textTheme.display3,
                      ),
                      Text(
                        getText(widget.group, widget.memberSize),
                        style: Theme.of(context).textTheme.display3,
                        overflow: TextOverflow.fade,
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          trailing: Icon(Icons.navigate_next, color: Colors.white, size: 30.0),
        ),
      ),
    );
  }
}
