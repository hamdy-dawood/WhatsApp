import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
 List<StatusDetails>lisofstatus=[
  StatusDetails(name:'abdelwahab',Time:'15 minutes ago'),
   StatusDetails(name:'Hamdy',Time:'17 minutes ago'),
   StatusDetails(name:'soha',Time:'20 minutes ago'),
   StatusDetails(name:'nehad',Time:'Today, 4:22 PM'),
   StatusDetails(name:'salma',Time:'Today, 7:20 AM'),
   StatusDetails(name:'Maged',Time:'Today, 5:10 AM'),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
       children: [
          Container(
           height: 75,

           child: ListView(
            children: [
            ListTile(
              leading:CircleAvatar(
                radius: 40,backgroundColor: Colors.blue,),
              title: Text('My status',style:TextStyle(fontSize: 20,color: Colors.black),),
              subtitle: Text('Tap to add status update'),
            )
          ],
        ),
      ),
         Container(
           height: 27,
           color: Colors.grey[200],

           child: Row(
             children: [
               SizedBox(width: 20,),
               Text('Viewed updates',style: TextStyle(color: Colors.grey[600]),),
             ],
           ),
         ),
         Container(
           height: 490,
           child: ListView.builder(itemCount: 6,itemBuilder: (context,index){
             return   Column(
                 children:[

                   ListTile(leading: CircleAvatar(radius: 40,
                     backgroundColor: Colors.red,
                   ),

                     title: Text(lisofstatus[index].name),

                     subtitle: Text(lisofstatus[index].Time),
                     trailing: Icon(Icons.call,color: Colors.teal[800],),


                   ),


                   Row(
                     children: [
                       SizedBox(width: 45,),
                       SizedBox(
                         width: 300,
                         child: Divider(
                           thickness: 1,),
                       ),],
                   ),

                 ]
             );
           }
           ),

         )
   ],
)


         );

  }


  }

class StatusDetails{
  String name;
  String Time;
  StatusDetails({this.name,this.Time});
}
