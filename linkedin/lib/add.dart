

import 'package:flutter/material.dart';
import 'package:linkedin/home.dart';


class add extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _Add();
  }

}

class _Add extends State<add>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

   appBar: AppBar(
     leading: IconButton(
       icon: Icon(Icons.clear, color: Colors.white,),
       onPressed: (){
        return ;
       },
     ),

     title: Text("Start post", style: TextStyle(color: Colors.white),),
     centerTitle: true,
     actions: <Widget>[
       IconButton(
         icon: Icon(Icons.add_circle_outline,color: Colors.white,),
         onPressed: (){

         },
       ),
     ],
   ),




    );
  }

}