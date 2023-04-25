import 'package:flutter/material.dart';
import 'package:intranet/screens/new_post_page.dart';

class BoardHomePage extends StatefulWidget {
  BoardHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _BoardHomePageState createState() => _BoardHomePageState();
}

class _BoardHomePageState extends State<BoardHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = [
    Center(child: Text('Home Tab')),
    Center(child: Text('Messages Tab')),
    Center(child: Text('Settings Tab')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar를 제거합니다.
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}