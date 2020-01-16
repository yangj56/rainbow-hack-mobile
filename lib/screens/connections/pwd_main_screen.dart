import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/group_achievement.dart';
import 'package:rainbow_hack/widgets/group_list.dart';

class PwdMain extends StatefulWidget {
  static const routeName = '/profile';
  final int index;

  PwdMain({@required this.index});

  @override
  _PwdMainState createState() => _PwdMainState();
}

class _PwdMainState extends State<PwdMain> with TickerProviderStateMixin {
  double screenSize;
  double screenRatio;
  AppBar appBar;
  List<Tab> tabList = List();
  TabController _tabController;

  @override
  void initState() {
    tabList.add(Tab(
      text: 'Profile',
    ));
    tabList.add(Tab(
      text: 'Journal',
    ));
    _tabController = new TabController(vsync: this, length: tabList.length);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image/person1.jpeg'),
                radius: 50,
              ),
            ),
            Container(child: Text('Julia, 16')),
            Container(
              child: Text(
                'Yishun',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: TabBar(
                        controller: _tabController,
                        indicatorColor: Colors.pink,
                        indicatorSize: TabBarIndicatorSize.tab,
                        tabs: tabList),
                  ),
                  Container(
                    height: 20.0,
                    child: TabBarView(
                        controller: _tabController,
                        children: <Widget>[GroupAchievement(), GroupList()]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
