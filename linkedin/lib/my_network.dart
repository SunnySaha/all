import 'package:flutter/material.dart';
import 'package:linkedin/message.dart';


class my_network extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _Network();
  }

}

class _Network extends State<my_network>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        elevation: 2.2,
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return message();
              }));
            },
            icon: Icon(Icons.message, color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.blueAccent[300],
        title: Container(

          margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 16.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(50, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(22.0)),

          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.white),
                    icon: Icon(Icons.search, color: Colors.white,),
                  ),
                ),
              ),


              Expanded(
                flex: 0,
                child: IconButton(
                  onPressed: (){

                  },
                  icon: Icon(Icons.camera, color: Colors.white,),
                ),
              ),
            ],
          ),

        ),

      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,

          children: const <Widget>[
            Divider(height:10.0),

            SizedBox(
              height: 50,
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text("Profile Hondar",
                style: TextStyle(
                    fontSize: 22
                ),
              ),
              subtitle: Text("View Profile",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 18,
                ),
              ),
              trailing: IconButton(
                icon: Icon(Icons.clear, color: Colors.black,),

              ),

            ),
            ListTile(
              leading: Text("Recent"),
              trailing: Icon(Icons.keyboard_arrow_down),
            ),
            ListTile(
              title: Text("Groups", textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 18,
                ),
              ),

            ),
            ListTile(
              title: Text("Events", textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

            ),
            ListTile(
              leading: Text("Followed Hashtags",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize:18
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_down, color: Colors.grey,),


            ),
            ListTile(
              title: Text("Discover more", textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 16
                ),
              ),


            ),
          ],
        ),
      ),

      body: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Text("Manage My network", style: TextStyle(color: Colors.black, fontSize: 20.0),),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: (){

                },
              ),
            ),

           Divider(
             color: Colors.grey,
             height: 12.0,

           ),
            SizedBox(height: 8.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

               
                Text("Invitations", style: TextStyle(color: Colors.grey, fontSize: 15.0),),
                Text("See all 10", style: TextStyle(color: Colors.blue[900], fontSize: 17.0),)


              ],
            ),
            SizedBox(height: 8.0,),
            Divider(
              color: Colors.grey,
              height: 3.0,

            ),

            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Pic will show here",style: TextStyle(color: Colors.grey),),



                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Rashed Khan", style: (TextStyle(color: Colors.black, fontSize: 15.0)),),
                    Text("It engineer (Mis)", style: (TextStyle(color: Colors.grey, fontSize: 12.0)),),
                    Row(
                      children: <Widget>[
                        Icon(Icons.attachment),
                        Text("9 mutual connections", style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  ],
                ),

                IconButton(
                  icon: Icon(Icons.clear, color: Colors.redAccent,),
                  onPressed: (){

                  },
                ),

                IconButton(
                  icon: Icon(Icons.check_circle, color: Colors.blueAccent,),
                ),
              ],
            ),
          ],
        ),

      ),

    );
  }

}