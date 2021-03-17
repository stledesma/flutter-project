import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_project/cards.dart';

class ListViewCards extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300.0,
          child: ListView(
            padding: EdgeInsets.all(25.0),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              CardImage("assets/images/course1.jpg", "Free Course", "Introduction to Pentesting"),
              CardImage("assets/images/course2.jpg", "Online Course","Cybersecurity focused on Pentesting"),
              CardImage("assets/images/course3.jpg", "Free Course","Introduction to Hacking"),
              CardImage("assets/images/course4.jpg", "Online Course","Penetration Test"),
            ]
          ),
        ),
      ],

    );
  }

}