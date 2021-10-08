import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsaap/Model/Personal%20Chat.dart';
import 'package:whatsaap/Model/SingleChat.dart';
import 'package:whatsaap/Model/chat.dart';
class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  List<ChatDetails>chats=[
    ChatDetails(name:'Mostafa',subtitle: 'Hello ',IsRead: false,IsGroup: false,Time: '1:05'),
    ChatDetails(name:'hamdy',subtitle: 'Hello hamdy',IsRead: true,IsGroup: false,Time: '12:15'),
    ChatDetails(name:'Abdelwahab',subtitle: 'hello',IsRead: true,IsGroup: false,Time: '8:10'),

    ChatDetails(name:'Flutter Group',subtitle: 'Hello Flutter ',IsRead: true,IsGroup: true,Time: '11:19')
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
          floatingActionButton: GestureDetector(
            onTap: (){
              Navigator.popAndPushNamed(context, 'NewMessages' );
            },
            child: FloatingActionButton(
               backgroundColor:Colors.green,child: Icon(Icons.message,color: Colors.white,),),
          ),
      body:
      ListView.builder(itemCount: chats.length,
          itemBuilder:(context,index){

             return GestureDetector(
               onTap: (){
                 Navigator.popAndPushNamed(context, 'PersonalChat' );
               },
               child: SingleChat(
                 chatdetails: chats[index],
               ),
             );
      }
      )

      );

  }
}
