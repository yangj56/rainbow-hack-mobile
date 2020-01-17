import 'package:flutter/material.dart';
import 'package:rainbow_hack/models/pwd.dart';
import 'package:rainbow_hack/widgets/Pwd/pwd_modal.dart';

class FeaturedPWDItem extends StatelessWidget {
  final String id;
  final String avatar;
  final String name;
  final int age;
  final MedicalCondition medicalCondition;
  final String description;
  FeaturedPWDItem({
    @required this.id,
    @required this.avatar,
    @required this.age,
    @required this.medicalCondition,
    @required this.description,
    @required this.name,
  });

  String get getConditionText {
    switch (medicalCondition) {
      case MedicalCondition.HAND:
        return 'Hand';
        break;
      case MedicalCondition.HEART:
        return 'Heart';
        break;
      case MedicalCondition.LEG:
        return 'Leg';
        break;
      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        elevation: 1,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(2),
                      topRight: Radius.circular(2)),
                  child: Image.asset(
                    avatar,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 5,
                  child: Container(
                    height: 80,
                    width: 100,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(
                      "MEET: $name",
                      style: Theme.of(context).textTheme.display2,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  child: SizedBox(
                    height: 30,
                    child: FlatButton(
                        onPressed: () => showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return PwdModal(index: 1);
                            }),
                        child: Text('Connect',
                            style: new TextStyle(color: Colors.blue))),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
