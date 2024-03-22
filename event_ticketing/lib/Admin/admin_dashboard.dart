import 'package:flutter/material.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Dashboard'),
    Text('Users'),
    Text('Report'),
    Text('Bookings'),
    Text('Emails'),
    Text('Messages'),
    Text('Reported Issues'),
    Text('Settings'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isWideScreen = MediaQuery.of(context).size.width > 600;
    
    return Scaffold(
        body: Row(
        children: <Widget>[
          Visibility(
            visible: isWideScreen,
            child: Container(
              width: 200,
              color: Color(0xFF007A37),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.menu,color: Colors.white,),
                    title: Text('Dashboard',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    onTap: () {
                      _onItemTapped(0);
                    },
                    selected: _selectedIndex == 0,
                  ),
                  ListTile(
                    leading: Icon(Icons.people,color: Colors.white,),
                    title: Text('Users',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                    onTap: () {
                      _onItemTapped(1);
                    },
                    selected: _selectedIndex == 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.auto_graph,color: Colors.white,),
                    title: Text('Reports',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                    onTap: () {
                      _onItemTapped(2);
                    },
                    selected: _selectedIndex == 2,
                  ),
                  ListTile(
                    leading: Icon(Icons.airplane_ticket,color: Colors.white,),
                    title: Text('Bookings',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                    onTap: () {
                      _onItemTapped(3);
                    },
                    selected: _selectedIndex == 3,
                  ),
                 ListTile(
                    leading: Icon(Icons.email_sharp,color: Colors.white,),
                    title: Text('Emails',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                    onTap: () {
                      _onItemTapped(4);
                    },
                    selected: _selectedIndex == 4,
                  ),
                   ListTile(
                    leading: Icon(Icons.messenger,color: Colors.white,),
                    title: Text('Messages',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                    onTap: () {
                      _onItemTapped(5);
                    },
                    selected: _selectedIndex == 5,
                  ),
                  ListTile(
                    leading: Icon(Icons.report_problem,color: Colors.white,),
                    title: Text('Reported Issues',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                    onTap: () {
                      _onItemTapped(6);
                    },
                    selected: _selectedIndex == 6,
                  ),
                  ListTile(
                    leading: Icon(Icons.settings,color: Colors.white,),
                    title: Text('Settings',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                    onTap: () {
                      _onItemTapped(7);
                    },
                    selected: _selectedIndex == 7,
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: isWideScreen,
            child: VerticalDivider(),
          ),
          Expanded(
            child: Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ),
        ],
      ),
    );
  }
}
