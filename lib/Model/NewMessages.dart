import 'package:flutter/material.dart';
import 'package:whatsaap/Model/Newgroup.dart';
class NewMessages extends StatefulWidget {
  @override
  _NewMessagesState createState() => _NewMessagesState();
}

class _NewMessagesState extends State<NewMessages> {
  List<NewMessagesDetails>Listofnewmessages=[
    NewMessagesDetails(name:'New group',subtitle: '',IsIcon: false),
    NewMessagesDetails(name:'New contact',subtitle: '',IsIcon: true),
    NewMessagesDetails(name:'Abdelwahab',subtitle: 'Hey there! i am using WhatsApp.',IsIcon: false),
    NewMessagesDetails(name:'Mostafa',subtitle: 'GYM',IsIcon: false),
    NewMessagesDetails(name:'Soha',subtitle: '♥️🌸',IsIcon: false),
    NewMessagesDetails(name:'Salma',subtitle: '',IsIcon: false),
    NewMessagesDetails(name:'Nehad',subtitle: '..',IsIcon: false),
    NewMessagesDetails(name:'Maged',subtitle: '',IsIcon: false),
  ];
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
            SizedBox(width: 12,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text('Select contact',style: TextStyle(fontSize: 18),),
                Text('150 contacts')
              ],

            ),
            SizedBox(width: 150,),
            Icon(Icons.search),
            PopupMenuButton(color: Colors.white,
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(child: Text('Invite a friend',),),
                    PopupMenuItem(child: Text('Contacts'),),
                    PopupMenuItem(child: Text('Refresh'),),
                    PopupMenuItem(child: Text('Help'),),

                  ];
                }

            )
        ],

    ),
      body:Container(
        height: 645,
            child:
      ListView.builder(itemCount: 8,itemBuilder: (context,index){

        return  GestureDetector(
          onTap: (){
            Navigator.popAndPushNamed(context, 'Newgroup');

          },
          child:  Column(

              children:[

                ListTile(leading: CircleAvatar(radius: 30,
                  backgroundColor: Colors.green,
                ),

                  title: Text(Listofnewmessages[index].name),

                  subtitle: Text(Listofnewmessages[index].subtitle),
                  trailing: Icon(Listofnewmessages[index].IsIcon?Icons.qr_code:null,color: Colors.teal[200],),



                ),


              ]
          ),
        );
      }
      ),),

    );
  }
}
class NewMessagesDetails{
  String name;
  bool IsIcon;
  String subtitle;
  NewMessagesDetails({this.name,this.subtitle,this.IsIcon});
}