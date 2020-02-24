import 'package:flutter/material.dart';
import 'package:linkedin/message.dart';



class home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _Home();
  }

}

class _Home extends State<home>{
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

      body: Column(

          children: <Widget>[
            Container(
              height: 50,

              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[600],
              ),

              child: Row(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,

                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Write a post",
                          hintStyle: TextStyle(color: Colors.white),
                          icon: Icon(Icons.edit, color: Colors.white,),
                        ),
                      ),

                    ),
                    VerticalDivider(color: Colors.white30,),
                    IconButton(
                      icon:Icon(Icons.camera_alt,color: Colors.white,),
                      onPressed: (){

                      },
                    ),

                  ]),
            ),


            SizedBox(
              height: 5,
            ),

            Container(
              height: 200,
              child: ListView(
                  padding: EdgeInsets.zero,

                  children: <Widget>[

                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/titlepic.png'),
                      ),
                      title: Text("John Deo 1st",
                        style: TextStyle(
                            fontSize: 22
                        ),
                      ),
                      subtitle: Text("Full Stack Developer at Heaven",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 18,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: (){

                        },
                        icon: Icon(Icons.menu, color: Colors.black,),
                      ),

                    ),
                    Divider(height: 5,color: Colors.grey[800],),

                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/titlepic.png'),
                      ),
                      title: Text("John Deo 2nd",
                        style: TextStyle(
                            fontSize: 22
                        ),
                      ),
                      subtitle: Text("Senior Java Developer",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 18,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: (){

                        },
                        icon: Icon(Icons.menu, color: Colors.black,),
                      ),

                    ),



                  ]
              ),
            ),
          ],

        ),

    );


  }

}