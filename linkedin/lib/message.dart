

import 'package:flutter/material.dart';
import 'package:linkedin/group_create.dart';

class message extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _Message();
  }

}

class _Message extends State<message>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        elevation: 2.2,
        centerTitle: true,
        actions: <Widget>[

          IconButton(

            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return group_create();
              }));
            },
            icon: Icon(Icons.group_add, color: Colors.white,),
          )
        ],
        title: Text("Messages", textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white
        ),
        ),
      ),
    );
  }

}