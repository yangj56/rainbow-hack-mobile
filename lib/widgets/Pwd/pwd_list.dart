import 'package:flutter/material.dart';
import 'package:rainbow_hack/utils/pwd_data.dart';
import 'package:rainbow_hack/widgets/Pwd/pwd_card.dart';


class PwdList extends StatelessWidget {
  final bool isOnboarding;

  PwdList({
    @required this.isOnboarding,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: pwdData.length,
          itemBuilder: (BuildContext context, int index) {
            return new PwdCard(
              name: pwdData[index]['name'],
              age: pwdData[index]['age'],
              disability: pwdData[index]['disability'],
              image: pwdData[index]['image'],
              index: index,
              isOnboarding: isOnboarding,
            );
          }),
      ),
    );
  }
}
