import 'package:flutter/material.dart';
import 'package:rainbow_hack/widgets/menu_drawer.dart';
import 'package:rainbow_hack/screens/requests_assigned_screen.dart';
import 'package:rainbow_hack/screens/requests_other_screen.dart';

class RequestsScreen extends StatefulWidget {
  static const routeName = '/requests';

  RequestsScreen();

  @override
  _RequestsScreenState createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': RequestsAssigned(), 'title': 'My Assigned Requests'},
      {'page': RequestsOther(), 'title': 'Other Requests'},
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
              title: Text('Assigned')),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.star),
              title: Text('Other Requests')),
        ],
      ),
    );
  }
}
