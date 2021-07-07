import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final Function onPressed;
  final Function onTitleTapped;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override final Size preferredSize;

  CustomAppBar({@required this.title, this.onPressed, this.onTitleTapped})
      : preferredSize = Size.fromHeight(80.0);

}

class _CustomAppBarState extends State<CustomAppBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
                offset: new Offset(-10, -10),
                color: Colors.white,spreadRadius: -5,blurRadius: 24),
            BoxShadow(
                offset: new Offset(10, 10),
                color: Colors.black,spreadRadius: -5,blurRadius: 24),
          ],
          borderRadius: BorderRadius.all(Radius.circular(16)),
          gradient: RadialGradient(
            radius: 24,
              colors: [Colors.deepPurple.withAlpha(255),
                Colors.deepPurpleAccent.withAlpha(255)]),
        ),
    );
  }
}


