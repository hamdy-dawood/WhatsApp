import 'package:flutter/material.dart';
import 'package:whatsaap/Pages/CallsPage.dart';
import 'package:whatsaap/Pages/Chats%20Page.dart';
import 'package:whatsaap/Pages/StatusPage.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage > {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(

        appBar:(AppBar(backgroundColor: Colors.teal[800],


          title: Text('WhatsApp',style: TextStyle(color: Colors.white,fontSize:22),),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 10,),
          PopupMenuButton(color: Colors.white,
          itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text('New Group',),),
              PopupMenuItem(child: Text('New BoardCast'),),
              PopupMenuItem(child: Text('WhatsApp Web'),),
              PopupMenuItem(child: Text('Stared Messages'),),
              PopupMenuItem(child: Text('Setting'),),
            ];
          }

       )
          ],
          bottom:TabBar(
            indicatorColor:Colors.white,
            tabs: [

              Container(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Icon(Icons.camera_alt),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                   Text('CHATS')
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text('STATUS')
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text('CALLS')

                  ],
                ),
              ),

             ],),
        )

        ),
        body: TabBarView(
          children: [
            Center(child: Text('CAMERA',style: TextStyle(fontSize: 100,color: Colors.teal),)),
            ChatsPage(),
            StatusPage(),
            CallsPage(),
          ],
        ),


      )
    );


  }
}
