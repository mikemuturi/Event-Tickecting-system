import 'package:event_ticketing/menu/dashboard.dart';
import 'package:event_ticketing/menu/help_center.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _darkmode = false;

  void _toggleDarkMode(bool value){
    setState(() {
      _darkmode = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF007A37),
      //   // title: Text("Setting", style: TextStyle(fontSize: 22, color: Colors.white),),
      //   // centerTitle: true,
      //   // leading:            
      //   //  IconButton(onPressed: ()
      //   //  {
      //   //   Navigator.push(context,
      //   //    MaterialPageRoute(builder: (context) => DashBoard()));
      //   //  }, 
      //   //  icon:    Icon(Icons.navigate_before),)
          
      // ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
           ListTile(
            leading: Icon(Icons.notification_important_sharp,),
            title: Text("Notifications"),
            trailing: Icon(Icons.read_more),
            onTap: () {
              
            },
           ),
           SizedBox(height: 10,),
           ListTile(
            leading: Icon(Icons.book_online_rounded),
            title: Text("Tickets"),
            trailing: Icon(Icons.navigate_next),
            onTap: (){

            },
           ),
           SizedBox(height: 10,),
           ListTile(
            leading: Icon(Icons.favorite,color: Colors.red,),
            title: Text("Favourite"),
            trailing: Icon(Icons.navigate_next),
            onTap: (){
              
            },
           ),
           SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.messenger_outline),
              title: Text("Messages"),
              trailing: Icon(Icons.navigate_next),
              onTap: (){

              },
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.help_center),
              title: Text("Help "),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => HelpScreen())
                );
              },
            ),

           SizedBox(height: 10,),
           SwitchListTile(
            secondary: Icon(Icons.light_mode_outlined),
            title: Text("Switch Mode"),
            value: _darkmode,
           onChanged: _toggleDarkMode),
           SizedBox(height: 10,),
           ListTile(
            leading: Icon(Icons.logout),
            title: Text("LogOut"),
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => DashBoard()));
            },
           )
        ],)
    );
  }
}