import 'package:event_ticketing/menu/settings.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  final TextEditingController nameController =TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF007A37),
        title: Text("Help Center", style: TextStyle(fontSize: 22, color: Colors.white),),
        centerTitle: true,
        leading:            
         IconButton(onPressed: ()
         {
          Navigator.push(context,
           MaterialPageRoute(builder: (context) => SettingsScreen()));
         }, 
         icon:    Icon(Icons.navigate_before),)
          
      ),
      body: Padding(padding: EdgeInsets.all(30.0),
      child: Center(
        child: Container(
          height: 500,
          width: 400,
          color: Colors.white,
          child: Card(
            color: Colors.white,
            elevation: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    label: Text("Name")
                  ),
                 
                 ),
                 SizedBox(height: 20,),
                       TextField(
                  controller:  emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    label: Text("Email")
                  ),
                 
                 ),
                 SizedBox(height: 20,),
                   TextField(
                   maxLines: 6,
                  controller: messageController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    label: Text("Message")
                  ),
                 ),
                SizedBox(height: 16.0,),
                Center(child: ElevatedButton(onPressed: (){
                  String name = nameController.text;
                  String email = emailController.text;
                  String message = messageController.text;
            
                  nameController.clear();
                  emailController.clear();
                  messageController.clear();
            
                  showDialog(context: context,
                   builder: (BuildContext context) {
                     return AlertDialog(
                      title: Text("Request Submitted"),
                      content: Text("Your Request has been submitted successfully"),
                      actions: [
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SettingsScreen())
                        );
                      } , child: Text("Ok"))
                      ],
                     );
                   }
                   );
                  
                }
                , child: Text("Submit"),
                ),
                )
                
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}