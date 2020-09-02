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
        backgroundColor: Colors.deepPurpleAccent,
        appBar: CustomAppBar(),
        body: Container(
          margin: EdgeInsets.all(24),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                offset: new Offset(-10, -10),
                color: Colors.white,spreadRadius: -5,blurRadius: 24),
              BoxShadow(
                  offset: new Offset(10, 10),
                  color: Colors.black,spreadRadius: -5,blurRadius: 24),
              ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.deepPurple.withAlpha(255),
                  Colors.deepPurpleAccent.withAlpha(255)]),
          ),
        ),
      )
    );
  }
}
