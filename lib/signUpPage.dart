import 'package:flutter/material.dart';
import 'package:flutter_application_project/signUp.dart';


class SignUpPage extends StatelessWidget{
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
            children: [SignUp()],
          ) 
        ),
      ),
    );
  }

}