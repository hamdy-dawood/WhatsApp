import 'package:flutter/material.dart';
import 'package:whatsaap/Model/NewMessages.dart';
class Newgroup extends StatefulWidget {

  @override
  _NewgroupState createState() => _NewgroupState();
}

class _NewgroupState extends State<Newgroup> {
  List<NewMessagesDetails>names=[
    NewMessagesDetails(name:'New group',subtitle: ''),
    NewMessagesDetails(name:'New contact',subtitle: ''),
    NewMessagesDetails(name:'Abdelwahab',subtitle: 'Hey there! i am using WhatsApp.'),
    NewMessagesDetails(name:'Mostafa',subtitle: 'GYM'),
    NewMessagesDetails(name:'Soha',subtitle: '♥️🌸'),
    NewMessagesDetails(name:'Salma',subtitle: ''),
    NewMessagesDetails(name:'Nehad',subtitle: '..'),
    NewMessagesDetails(name:'Maged',subtitle: ''),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.teal[800] ,
        actions: [
          GestureDetector(onTap: (){
            Navigator.popAndPushNamed(context, 'HomePage' );
          },
              child: Icon(Icons.arrow_back)),
          SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text('New group',style: TextStyle(fontSize: 21),),
              Text('add participants')
            ],

          ),
          SizedBox(width: 180,),
          Icon(Icons.search),
          SizedBox(width: 10,)
        ],
      ),
      body: Container(
        height: 645,
        child:
        ListView.builder(itemCount: 8,itemBuilder: (context,index){

          return  GestureDetector(
            onTap: (){
              Navigator.popAndPushNamed(context, 'NewMessages');

            },
            child:  Column(

                children:[

                  ListTile(leading: CircleAvatar(radius: 30,
                    backgroundColor: Colors.green,
                  ),

                    title: Text(names[index].name),

                    subtitle: Text(names[index].subtitle),




                  ),


                ]
            ),
          );
        }
        ),),
    );
  }
}
class newnames{
  String name;
  String subtitle;
  newnames({this.name,this.subtitle});
}

