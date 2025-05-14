import 'package:flutter/material.dart';
import 'package:ui_project/managestore_screen.dart';

class Firstscreen extends StatefulWidget{
 const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Additional Information",
        style: TextStyle(color: Colors.white,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,

       ),
        ),
        leading: Icon(Icons.arrow_back,
        color: Colors.white,),
        backgroundColor: const Color.fromARGB(255, 1, 60, 109)
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Share Dukaan App",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Poppins"
            ),),
            leading: Icon(Icons.share_outlined),
            trailing: Icon(Icons.arrow_forward_ios,
            size: 20,),onTap: () {
              Navigator.push(context,MaterialPageRoute(builder:(BuildContext ctr)=> SecondScreen() ));
            },

          ),
          ListTile(
            title: Text("Change Language",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Poppins"
            ),),
            leading: Icon(Icons.chat_bubble_outline),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            title: Text("WhatsApp Chat Support",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Poppins"
            ),),
            leading: Icon(Icons.chat_bubble_outline_rounded),
            trailing: Switch(value: isSwitch,
            activeTrackColor: const Color.fromARGB(255, 144, 203, 233),
            activeColor: Colors.blue,
             onChanged: (value){
              setState(() {
                isSwitch = value;
              });
            
            }),
          ),
          ListTile(
            title: Text("Privacy Policy",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Poppins"
            ),),
            leading: Icon(Icons.lock_outline),

          ),
          ListTile(
            title: Text("Rate Us",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Poppins"
            ),),
            leading: Icon(Icons.star_border_outlined
            ),
          ),
          ListTile(
            title: Text("Sign Out",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Poppins"
            ),),
            leading: Icon(Icons.logout_outlined),
          )
        ],
      ),
    );
  }
}