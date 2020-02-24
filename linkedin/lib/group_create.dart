
import 'package:flutter/material.dart';

class group_create extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _NoticeCreate();
  }

}

class _NoticeCreate extends State<group_create>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("New Group Conversation",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18
        ),
        ),

        leading: IconButton(
          icon: Icon(Icons.clear, color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),

      ),
    );
  }

}