import 'package:flutter/material.dart';
import 'package:rainbow_hack/screens/dashboard.dart';
import 'package:rainbow_hack/screens/guild_wall.dart';
import 'package:rainbow_hack/screens/pwd_screen.dart';
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
      {'page': GuildWallScreen(), 'title': 'Guild Wall'},
      {'page': PWDScreen(), 'title': 'My Kakis'}
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
              title: Text('Volunteers')),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.star),
              title: Text('Kakis'))
        ],
      ),
    );
  }
}
