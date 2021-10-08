import 'package:flutter/material.dart';
import 'package:whatsaap/Model/NewMessages.dart';
import 'package:whatsaap/Model/Newgroup.dart';
import 'package:whatsaap/Model/Personal%20Chat.dart';
import 'package:whatsaap/Model/chat.dart';
import 'package:whatsaap/Pages/CallsPage.dart';
import 'package:whatsaap/Pages/Chats%20Page.dart';
import 'package:whatsaap/Pages/HomePage.dart';
import 'package:whatsaap/Pages/SplashScreen.dart';
import 'package:whatsaap/Pages/StatusPage.dart';

void main(){
 runApp(WhatsApp()) ;
}
class WhatsApp extends StatefulWidget {
  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:'SplashScreen',
      routes: {
        'Newgroup':(context)=>Newgroup(),
        'NewMessages':(context)=>NewMessages(),
         'SplashScreen':(context)=>SplashScreen(),
         'HomePage':(context)=>HomePage(),
        'ChatsPage':(context)=>ChatsPage(),
        'StatusPage':(context)=>StatusPage(),
        'CallsPage':(context)=>CallsPage(),
        'PersonalChat':(context)=>PersonalChat(),


      },


    );
  }
}
