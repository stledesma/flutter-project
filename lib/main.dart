import 'package:flutter/material.dart';
import 'package:flutter_application_project/login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool _checkbox = false;
  // This widget is the root of your application.
  @override
    Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: new BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFDBC3F9), Color(0xFFE3D8F1)],
              begin: const FractionalOffset(1.0, 0.1),
              end: const FractionalOffset(1.0, 0.6),
            )
          ),
          child: ListView(
            children: [LoginS()],
          ) 
        ),
      ),
    );
  }

 
}

class Login {
}
