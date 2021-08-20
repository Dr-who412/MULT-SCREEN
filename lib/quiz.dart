import 'Answer.dart';
import 'Question.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Quiz extends  StatelessWidget{
  final List<Map<String,Object>>question;
  final int i;
  final Function answerQuestion;
  Quiz(this.question,this.i,this.answerQuestion);

  @override
  Widget build(BuildContext context) {


    return Column(children: <Widget>[
      Question(question[i]['q1']),
      ...(question[i]['ans']as List<Map<String,Object>>).map((answer){
        return Answer(()=>answerQuestion(answer['score']), answer['text']);
      }).toList(),

    ],

    );


  }




}