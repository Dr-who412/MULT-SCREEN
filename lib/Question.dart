

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import  'main.dart';
class Question extends StatelessWidget{
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient:LinearGradient(colors:[Colors.blueAccent,Colors.deepPurpleAccent],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        ),
      ),
      width: double.infinity,
      margin: EdgeInsets.all(10),
      alignment: Alignment.topCenter,
      child:Text(


        questionText,style: TextStyle(color:bl,fontSize: 35,),
        textAlign: TextAlign.center,



        ),

      );

  }
}