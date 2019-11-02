import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final questions;
  final Function answerQuestion;
  final curIndex ;

  Quiz(this.questions,this.answerQuestion,this.curIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Question(questions[curIndex]['question']),
            ...(questions[curIndex]['answers'] as List<Map>).map((answerTxt){
                return Answer(() =>this.answerQuestion(answerTxt['score']), answerTxt['text']);
            }).toList()
            
            
          ],
        );
  }
}