import 'package:flutter/material.dart';
import 'package:flutter_application_project/listViewCards.dart';
import 'package:flutter_application_project/main.dart';

class ProfileS extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: new BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF7A7A7A), Color(0xFF9E9D9B)],
              begin: const FractionalOffset(1.0, 0.1),
              end: const FractionalOffset(1.0, 0.6),
            )
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: (
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: (
                          Text(
                            "Hi, Steven Ledesma!",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: "Nunito"),
                          )
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        margin: EdgeInsets.only(left: 100.0),
                        child: InkWell(
                          onTap: (){
                            AlertDialog alert = AlertDialog(
                              title: Text('Log Out'),
                              content: Text("Want to log out?"),
                              actions: [
                                FlatButton(
                                  child: Text("YES"),
                                  onPressed: () {
                                     Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                ),
                                FlatButton(
                                  child: Text("NO"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                            showDialog(
                              context: context,
                              builder: (BuildContext context){
                                return alert;
                              }
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/stevenPerfil.jpg'),
                              )
                           ),
                          ),
                        ),
                      ),
                    ],
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0),
                child: (
                  Text(
                    "Here are some courses on Pentesting that you migth like.",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFF0A2DCC)),
                  )
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 30.0, top: 50.0),
                child: (
                  Text(
                    "Welcome",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
                  )
                ),
              ),
              ListViewCards(),
            ],
          ), 
        ),
      ),
    );
  }

}