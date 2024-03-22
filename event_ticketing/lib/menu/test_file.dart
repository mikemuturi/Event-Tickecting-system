import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdminMainDashboard extends StatefulWidget {
  const AdminMainDashboard({Key? key}) : super(key: key);

  @override
  State<AdminMainDashboard> createState() => _AdminMainDashboardState();
}

class _AdminMainDashboardState extends State<AdminMainDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Color(0xFF007A37),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(color: Colors.white,),
                  SizedBox(height: 10,),
                  TextButton.icon(onPressed: (){},
                    icon: Icon(Icons.email_outlined, color: Colors.white,),
                    label: const Text("Emails",style: TextStyle(color: Colors.white,fontSize: 22),)),
                  SizedBox(height: 20,),
                  TextButton.icon(onPressed: (){},
                    icon: Icon(Icons.auto_graph ,color: Colors.white,),
                    label: const Text("Reports",style: TextStyle(color: Colors.white,fontSize: 22),)),
                      SizedBox(height: 20,),
                  TextButton.icon(onPressed: (){},
                    icon: Icon(Icons.messenger, color: Colors.white,),
                    label: const Text("Messages",style: TextStyle(color: Colors.white,fontSize: 22),)),
                      SizedBox(height: 20,),
                  TextButton.icon(onPressed: (){},
                    icon: Icon(Icons.airplane_ticket, color: Colors.white,),
                    label: const Text("Bookings",style: TextStyle(color: Colors.white,fontSize: 22),)),
                      SizedBox(height: 20,),
                  TextButton.icon(onPressed: (){},
                    icon: Icon(Icons.help_center, color: Colors.white,),
                    label: const Text("Raised Issues",style: TextStyle(color: Colors.white,fontSize: 22),)),
                      SizedBox(height: 20,),
                  TextButton.icon(onPressed: (){},
                    icon: Icon(Icons.settings_accessibility, color: Colors.white,),
                    label: const Text("Settings",style: TextStyle(color: Colors.white,fontSize: 22),)),
                ],
              ),
            ),
       Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Card(
                      elevation: 16,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                    ),
                  ),
                         Container(
                    height: 150,
                    width: 150,
                    child: Card(
                      elevation: 16,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                    ),
                  ),
                         Container(
                    height: 150,
                    width: 150,
                    child: Card(
                      elevation: 16,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                    ),
                  )
                ],
          
                  ),
                 
                ],
              ),
          ],
        ),
      ),
    );
  }
}

