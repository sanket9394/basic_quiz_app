import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int total;
  final Function resetQuiz;

  Result(this.total,this.resetQuiz);


  String get resultText{

    var txt ="you are great";
    if(total>5)
      txt="okay";

      return txt;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child : Center( child :Text(resultText))
        ),
        FlatButton(
          child: Text("Reset"),
          onPressed: this.resetQuiz,
        )
      ],
      
    );
  }
}