import 'package:flutter/material.dart';
import 'package:rainbow_hack/screens/dashboard.dart';
import 'package:rainbow_hack/screens/group_screen.dart';
import 'package:rainbow_hack/widgets/menu_drawer.dart';

class HomepageScreen extends StatefulWidget {
  static const routeName = '/homepage';

  HomepageScreen();

  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 1;

  @override
  void initState() {
    _pages = [
      {'page': Dashboard(), 'title': 'Dashboard'},
      {'page': GroupScreen(), 'title': 'Group Name'},
    ];
    super.initState();
  }

  void _selectPage(int index) {
    print(index);
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category),
              title: Text('Events')),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.star),
              title: Text('Groups')),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.star),
              title: Text('Kakis'))
        ],
      ),
    );
  }
}
