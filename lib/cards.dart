import 'package:flutter/material.dart';


class CardImage extends StatelessWidget{

  String pathImage;
  String textCard;
  String titleCard;

  CardImage(String pathImage, String textCard, String titleCard){
      this.pathImage = pathImage;
      this.textCard = textCard;
      this.titleCard = titleCard;
  }

  @override
  Widget build(BuildContext context) {
    final card = Stack(
      children: [
        Container(
          height: 300.0,
          width: 350.0,
          margin: EdgeInsets.only(top: 10.0, left: 10.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage),
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
          margin: EdgeInsets.only(left: 20.0, top: 140.0),
          child: (
            Text(
              titleCard,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            )
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20.0, top: 200.0),
          child: (
            Text(
              textCard,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),
            )
          ),
        ),
      ],
    );
    return card;
  }

}