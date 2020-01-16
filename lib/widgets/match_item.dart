import 'package:flutter/material.dart';
import 'package:rainbow_hack/models/pwd.dart';

import 'Pwd/pwd_modal.dart';

class MatchItem extends StatefulWidget {
  final String name;
  final int age;
  final MedicalCondition medicalCondition;

  MatchItem(this.name, this.age, this.medicalCondition);

  @override
  _MatchItemState createState() => _MatchItemState();
}

String getText(MedicalCondition medicalCondition, int number) {
  String groupType = "";
  print(medicalCondition);
  switch (medicalCondition) {
    case MedicalCondition.HAND:
      groupType = 'Cerebral Palsy';
      break;
    case MedicalCondition.HEART:
      groupType = 'Epilepsy';
      break;
    case MedicalCondition.LEG:
      groupType = 'Vision Impairment';
      break;
    default:
      groupType = 'Vision Impairment';
  }
  print(groupType);
  groupType += ", ${number.toString()} joined";
  return groupType;
}

class _MatchItemState extends State<MatchItem> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        margin: EdgeInsets.all(2),
        height: 70,
        width: double.infinity,
        color: Theme.of(context).primaryColor,
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
                        getText(widget.medicalCondition, widget.age),
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
          trailing: IconButton(
            icon: Icon(Icons.navigate_next, color: Colors.white, size: 30.0),
            onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) {
                  return PwdModal(index: 1);
                }),
          ),
        ),
      ),
    );
  }
}
