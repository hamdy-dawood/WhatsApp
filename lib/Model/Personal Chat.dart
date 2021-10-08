import 'package:flutter/material.dart';
import 'package:whatsaap/Model/chat.dart';

class PersonalChat extends StatefulWidget {
  var  chatdetails = ChatDetails();
  PersonalChat({@required this.chatdetails});
  @override
  _PersonalChatState createState() => _PersonalChatState();
}

class _PersonalChatState extends State<PersonalChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        backgroundColor: Colors.teal[800],


        actions: [
          GestureDetector(onTap: (){
            Navigator.popAndPushNamed(context, 'HomePage' );
          },
              child: Icon(Icons.arrow_back)),
          CircleAvatar(radius: 20,backgroundColor: Colors.white,
          ),
          SizedBox(width: 7,),
          Column(
            children: [
              SizedBox(height: 15,),
              Text('Mostafa',style: TextStyle(color: Colors.white,fontSize:22),),
            ],
          ),
          SizedBox(width: 90,),
          Icon(Icons.videocam_sharp),
          SizedBox(width: 22,),
          Icon(Icons.call),
          SizedBox(width: 9,),
          PopupMenuButton(color: Colors.white,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text('View contact',),),
                  PopupMenuItem(child: Text('Media, links,and docs'),),
                  PopupMenuItem(child: Text('Search'),),
                  PopupMenuItem(child: Text('Mute notifications'),),
                  PopupMenuItem(child: Text('Wallpaper'),),
                  PopupMenuItem(child: Text('More'),),
                ];
              }

          )

        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 590,),
          Row(
            children: [
              SizedBox(width: 5,),
              Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color:Colors.white,
                ),
                height: 48,
                width: 290,
                child: TextFormField(decoration: InputDecoration(hintText: 'Type a message',
                    prefixIcon: Icon(Icons.emoji_emotions_outlined,color: Colors.grey,size: 30,),
                 suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: [


                        Icon(Icons.attach_file,color: Colors.grey,),
                        SizedBox(width: 12,),
                        Icon(Icons.camera_alt,color: Colors.grey,),
                        SizedBox(width: 10,),
                      ],
                    )),
                )
              ),
              SizedBox(width: 5,),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.teal[800],
                child: Icon(Icons.mic,color: Colors.white,size: 26,),
              )
            ],
          )
        ],
      ),
    );
  }
}
