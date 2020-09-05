import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/CustomAppBar.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: Scaffold(
        drawer:Drawer(
          child:ListView(
            padding:EdgeInsets.zero,
            children:<Widget>[
              DrawerHeader(
                child:Text('CONTENTS',),
                decoration: BoxDecoration(
                  color:Colors.black54,
                ),
              ),
              ExpansionTile(
                title:Text('Data Structures'),
                children:<Widget>[Text('Arrays'),Text("Linked Lists"),Text("Stack"),Text('Queues'),Text('Graphs'),Text('Trees')]
              ),
              ExpansionTile(
                  title:Text('Algorithms'),
                  children:<Widget>[Text("Greedy Algorithm"),Text("Recursive Algorithm"),Text('Backtracking Algorithm'),
                    Text('Divide and Conquer'),Text('Brute Force Algorithm')]
              ),
            ]
          )
        ),
        appBar: AppBar(
          backgroundColor: Colors.black54,
          centerTitle: true,
          title: Text('Data Structures and Algorithm',),

        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: new BoxDecoration(
            image:new DecorationImage(
              image: new AssetImage('assets/images/bgimage1.jpg'), fit: BoxFit.cover,)),
            ),
          ),
    );
  }
}
