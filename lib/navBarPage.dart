import 'package:flutter/material.dart';
import 'package:flutter_application_project/notice.dart';
import 'package:flutter_application_project/profile.dart';

class NavBarPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _NavBarPage();
  }
}

class _NavBarPage extends State{
  int indexCF = 0;
  final List<Widget> widgetScreens = [ProfileS(), Notice()];
  void onTapped(int index){
    setState(() {
          indexCF = index;
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetScreens[indexCF],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF0F36E4),
          primaryColor: Colors.black
        ),
        child: BottomNavigationBar(
          onTap: onTapped,
          currentIndex: indexCF,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'PROFILE'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined, color: Colors.black,),
              label: 'NOTICE'
            )
          ],
        ),
      ),
    );
  }

}

