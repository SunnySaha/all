import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linkedin/notification.dart';
import 'package:linkedin/home.dart';
import 'package:linkedin/my_network.dart';
import 'package:linkedin/add.dart';
import 'message.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'LinkedIn'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
 final pages = [

   home(),
   my_network(),
   add(),
   notification(),
 ];



  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.blueAccent[400]));
    return Scaffold(

      body: pages[_selectedIndex],



      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Icon(Icons.home,
            color: Colors.black,
            ),
            title: Text('Home'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group,
            color: Colors.black,
            ),
            title: Text('My Network'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline,
            color: Colors.black,
            ),
            title: Text('Add'),

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,
            color: Colors.black,
            ),
            title: Text('Notification'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel,
            color: Colors.black,
            ),
            title: Text('Post'),
          ),

        ],

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),

    );
  }

  void _onItemTapped(int index) {

    setState(() {
      _selectedIndex = index;
    });
  }
}
