import 'dart:html';

import 'package:flutter/material.dart';

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
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(centerTitle:true,
          backgroundColor: Colors.white12,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white70,width: 3.0),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10)
            )
          ),
          title: Text('Data Structure and Algorithms'),
        ),
      )
    );
  }
}
