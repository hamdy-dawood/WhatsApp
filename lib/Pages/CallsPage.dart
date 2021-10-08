import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsaap/Model/Calls.dart';
import 'package:whatsaap/Model/chat.dart';
class CallsPage extends StatefulWidget {


  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  List<CallDetails>nameoflist=[
    CallDetails(name:'abdelwahab',Time:'2:20',recive: true),
    CallDetails(name:'soha',Time:'1:10',recive: true),
    CallDetails(name:'nehad',Time:'7:20',recive: false),
    CallDetails(name:'salma',Time:'5:40',recive: true),
    CallDetails(name:'maged',Time:'12:20',recive: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body:

          ListView.builder(
              itemCount: 5
              ,itemBuilder: (context,index)

          {

            return  Column(
            children:[

              ListTile(leading: CircleAvatar(radius: 40,
                backgroundColor: Colors.greenAccent,
              ),

                title: Text(nameoflist[index].name),

                subtitle: Row(
                  children: [

                    nameoflist[index].recive?Icon(Icons.call_received,color: Colors.red,):Icon(Icons.call_made,color: Colors.green,),
                    SizedBox(width: 5,),
                    Text(nameoflist[index].Time),
                  ],
                ),
                trailing: Icon(Icons.call,color: Colors.teal[800],),
              ),
               Row(
                 children: [
                   SizedBox(width: 45,),
                   SizedBox(
                    width: 300,
                     child: Divider(
                      thickness: 1,
                    ),
              ),
                 ],
               )
            ]);
          }
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar( backgroundColor: Colors.blue[50],
                  radius: 20,child: Icon(Icons.video_call,color: Colors.teal[800],),
                ),
              ),
              FloatingActionButton(
                backgroundColor:Colors.green,child: Icon(Icons.message,color: Colors.white,),),
            ],
          ),
        );



}

}