import 'package:flutter/material.dart';
import 'package:flutter_application_project/navBarPage.dart';
import 'package:flutter_application_project/signUpPage.dart';

class LoginS extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginS> {
  final txtUserName = TextEditingController();
  final txtPassword = TextEditingController();
  String userName = "";
  String password = "";
  bool _checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250.0,
          width: 250.0,
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
              controller: txtUserName,
              style: TextStyle(fontSize: 20, color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF5613A9))
                ),
                prefixIcon: Icon(Icons.person, color: Color(0xFF5613A9)),
                labelText: "Username or Email",
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
              controller: txtPassword,
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
          margin: EdgeInsets.only(left: 160.0, top: 0.0),
          child: Row(
            children: [
              Text(
                "Forgot Paswword? ",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              TextButton(
                onPressed: () {
                  //action
                },
                child: Text(
                  'Click here', 
                  style: TextStyle(fontSize: 15, color: Color(0xFF5613A9), fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30.0, top: 0.0),
          child: (
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('Remember Me'),
              value: _checkbox,
              activeColor: Color(0xFF6200EE),
              onChanged: (bool value){
                setState((){
                  _checkbox =! _checkbox;
                });
              },
            )
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
                userName = txtUserName.text;
                  password = txtPassword.text;
                  if(userName.isEmpty && password.isEmpty){
                    AlertDialog alert = AlertDialog(
                      title: Text('Empty fields'),
                      content: Text("You can't leave the fields empty"),
                      actions: [
                        FlatButton(
                          child: Text("OK"),
                          onPressed: () {
                            Navigator.of(context).pop();
                           },
                        )
                      ],
                    );
                    showDialog(
                      context: context,
                      builder: (BuildContext context){
                        return alert;
                      }
                    );
                  } else {
                    if (userName == "sledesma" && password == "st12345") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NavBarPage()),
                      );
                    } else {
                      AlertDialog alert = AlertDialog(
                        title: Text('Failed to login'),
                        content: Text("The username or password entered is incorrect"),
                        actions: [
                          RaisedButton(
                            child: Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                      showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return alert;
                        }
                      );
                    }
                  }  
              },
              color: Color(0xFF5613A9),
              child: 
                Text(
                  'Login', 
                  style: TextStyle(fontSize: 24, color: Colors.white)
                ),
            )
          )
        ),
        Container(
          margin: EdgeInsets.only(left: 80.0, top: 9.0, bottom: 0.0),
          child: Row(
            children: [
              Text(
                "Don't have an Account? ",
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage())
                  );
                },
                child: Text(
                  'Sign Up', 
                  style: TextStyle(fontSize: 17, color: Color(0xFF5613A9), fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  // ···
}