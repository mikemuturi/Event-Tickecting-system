import 'package:event_ticketing/menu/dashboard.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF007A37),
        title: Text("Update Profile Page",
        style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          centerTitle: true,
       leading:            
         IconButton(onPressed: ()
         {
          Navigator.push(context,
           MaterialPageRoute(builder: (context) => DashBoard()));
         }, 
         icon:    Icon(Icons.navigate_before),)
          
        
      ),
      body: Center(child: const Text("Change your profile here")),
    );
  }
}