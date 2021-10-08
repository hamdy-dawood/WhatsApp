import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsaap/Model/chat.dart';

class SingleChat extends StatefulWidget {
  var  chatdetails = ChatDetails();
  SingleChat({this.chatdetails});
  @override
  _SingleChatState createState() => _SingleChatState();
}

class _SingleChatState extends State<SingleChat> {

  @override
  Widget build(BuildContext context) {

    return Column(

      children:[
      Column(
        children: [
          ListTile(
                leading:
              CircleAvatar(radius: 40,
                child: SvgPicture.asset(widget.chatdetails.IsGroup?'asset/supervisor_account-black-18dp.svg':'asset/account_circle-black-18dp.svg',color: Colors.grey,),
             backgroundColor:   Colors.white, ),
                 title: Text(widget.chatdetails.name),
                subtitle: Row(
                  children: [
                    Icon(Icons.done_all,color: Colors.green,),
                    Text(widget.chatdetails.subtitle),
                  ],
                ),
                trailing: Text(widget.chatdetails.Time),
     ),
          SizedBox(height: 0,)
        ],

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
      ]
    );

      }

}
