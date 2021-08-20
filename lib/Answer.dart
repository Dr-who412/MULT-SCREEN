import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
class Answer extends  StatelessWidget{
  final String AnswerText;
 final Function x;

  Answer(this.x ,this.AnswerText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      gradient:LinearGradient(colors:[Colors.deepPurpleAccent,Colors.orange],
          begin: Alignment.topLeft,
          end:Alignment.bottomRight,
      ),),
      width: double.infinity,
      margin: EdgeInsets.all(10),
      alignment: Alignment.topCenter,
      child: RaisedButton(
        color: Colors.indigoAccent,

        child: Text(AnswerText,style: TextStyle(fontSize: 25,color: w),
        ),
        shape: RoundedRectangleBorder (
          borderRadius: BorderRadius.circular(30)
        ),
        onPressed:x ,
      ),

    );

  }
}