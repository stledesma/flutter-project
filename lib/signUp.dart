import 'package:flutter/material.dart';
import 'package:flutter_application_project/main.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100.0,
          width: 100.0,
          margin: EdgeInsets.only(top: 15.0, left: 30.0, right: 40.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/login_logo.png'), 
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0)
            ),
            shape: BoxShape.rectangle, 
          ),
        ),
        Container(
           width: 300.0,
          margin: EdgeInsets.only(top: 20.0),
          child: (
            TextField(
              style: TextStyle(fontSize: 20, color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF5613A9))
                ),
                prefixIcon: Icon(Icons.email, color: Color(0xFF5613A9)),
                labelText: "Email",
                labelStyle: TextStyle(fontSize: 20, color: Colors.black,)
              ),
            )
          ),
        ),
        Container(
           width: 300.0,
          margin: EdgeInsets.only(top: 20.0),
          child: (
            TextField(
              style: TextStyle(fontSize: 20, color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF5613A9))
                ),
                prefixIcon: Icon(Icons.person, color: Color(0xFF5613A9)),
                labelText: "Username",
                labelStyle: TextStyle(fontSize: 20, color: Colors.black,)
              ),
            )
          ),
        ),
        Container(
          width: 300.0,
          margin: EdgeInsets.only(top: 20.0),
          child: (
            TextField(
              style: TextStyle(fontSize: 20, color: Colors.black),
              obscureText: true,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF5613A9))
                ),
                prefixIcon: Icon(Icons.lock, color: Color(0xFF5613A9)),
                suffix: Icon(Icons.visibility, color: Color(0xFF5613A9)),
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 20, color: Colors.black,)
              ),
            )
          ),
        ),
        Container(
          width: 300.0,
          margin: EdgeInsets.only(top: 20.0),
          child: (
            TextField(
              style: TextStyle(fontSize: 20, color: Colors.black),
              obscureText: true,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF5613A9))
                ),
                prefixIcon: Icon(Icons.lock, color: Color(0xFF5613A9)),
                suffix: Icon(Icons.visibility, color: Color(0xFF5613A9)),
                labelText: "Reply Password",
                labelStyle: TextStyle(fontSize: 20, color: Colors.black,)
              ),
            )
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 110.0, top: 10.0),
          child: Row(
            children: [
              Text(
                "Already a meber? ",
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: Text(
                  'Log In', 
                  style: TextStyle(fontSize: 17, color: Color(0xFF5613A9), fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 0.0, top: 10.0),
          child: (
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Colors.black)
              ),
              minWidth: 300.0,
              height: 50.0,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
              },
              color: Color(0xFF5613A9),
              child: 
                Text(
                  'Sign Up', 
                  style: TextStyle(fontSize: 24, color: Colors.white)
                ),
            )
          )
        ),
      ],
    );
  }

}