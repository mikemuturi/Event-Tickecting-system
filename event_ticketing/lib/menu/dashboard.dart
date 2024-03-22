import 'package:event_ticketing/Admin/admin_dashboard.dart';
import 'package:event_ticketing/menu/category.dart';
import 'package:event_ticketing/menu/main_home.dart';
import 'package:event_ticketing/menu/settings.dart';

import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key});
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    MainHome(),
    CategoryScreen(),
    AdminDashboard(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    if (index >= 0 && index < _widgetOptions.length) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF007A37),
        title: Text(
          'Dashboard',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person, color: Colors.black),
            ),
          )
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category, color: Colors.black,),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.admin_panel_settings,color: Colors.black,),
            label: 'Admin',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: Colors.black,),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
