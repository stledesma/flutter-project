import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Notice extends StatelessWidget{
  
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
          child: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    height: 300.0,
                    width: 600.0,
                    margin: EdgeInsets.only(top: 10.0, left: 0.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/notice.jpg'),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0)
                      ),
                      shape: BoxShape.rectangle,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 15.0,
                          offset: Offset(0.0, 7.0)
                        )
                      ] 
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0, left: 350.0),
                    child:  FloatingActionButton(
                      child: Icon(Icons.share),
                      elevation: 50.0,
                      backgroundColor: Colors.transparent, 
                      onPressed: () {  },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 275.0, left: 340.0),
                    child: FloatingActionButton(
                      child: Icon(Icons.favorite),
                      elevation: 50.0,
                      //backgroundColor: Colors.amber, 
                      onPressed: () {  },
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 0.0, left: 10.0),
                child: Text(
                  'Network Penetration Testing: A Primer',
                  style: TextStyle(fontSize: 40, color: Colors.black, fontFamily: 'Abel'),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10.0, left: 10.0),
                    child: Icon(Icons.calendar_today),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0, left: 20.0),
                    child: Text(
                      dateNow(),
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 10.0, bottom: 5.0),
                child: Text(
                  'Today, with the world adjusting to the new normal, preparing for cyberattacks requires' 
                  'stringent protective strategies. Experts predict that in 2021, a cyberattack will occur'
                  'every 11 seconds (nearly twice as frequently as in 2019). Is your network prepared for this?'
                  'One way to make sure that your network’s security is up to the mark is by conducting network '
                  'penetration testing. In this article, we discuss everything you need to know about what network pen testing is, the benefits and how to perform a successful network pen test.',
                  style: TextStyle(fontSize: 20, color: Colors.black, fontFamily: 'Abel'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

String dateNow(){
  DateTime now = new DateTime.now();
  DateFormat dateFormat = DateFormat("yyyy-MM-dd"); 
  String string = dateFormat.format(DateTime.now()); 
  return string; 
}