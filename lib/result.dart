import 'Answer.dart';
import 'Question.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'main.dart';
import 'main.dart';

class Result extends  StatelessWidget{
  final Function resat;
  final total;
  Result(this.resat,this.total);
  String get rP{
    String rT;
    if(total >= 70){
      rT="u r awesome !";
    } else if(total>=40){
      rT="u r likable !";
    }else{
      rT="u r so bad";
    }
    return rT;
  }

  @override
  Widget build(BuildContext context) {
   return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("u r degre is $total ,so $rP"
            ,style:TextStyle(fontSize: 14,color:bl)),
        FlatButton(onPressed: resat,
            child: Text("reset quiz",
            style:TextStyle(fontSize: 45,color: Colors.deepPurple)
            )
            )
      ],
    )

    );
  }




  }




