import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int qindex = 0;
  int totalScore = 0;

  void _answerQuestion(int score) {
    totalScore+=score;
    setState(() {
      qindex++;
    });
  }

  void resetQuiz(){

    setState(() {
      qindex=0;
      totalScore=0;
    });
  }

  var questions = [
    {
      "question": "what is your favorite color",
      "answers": [
        {"text": "black", "score": 10},
        {"text": "red", "score": 5},
        {"text": "blue", "score": 3},
        {"text": "white", "score": 1}
      ]
    },
    {
      "question": "what is your favorite animal",
      "answers": [
        {"text": "dog", "score": 10},
        {"text": "human", "score": 5},
        {"text": "cat", "score": 2},
        {"text": "bull", "score": 0},]
    }
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Topic"),
        ),
        body: qindex < questions.length
            ? Quiz(questions, _answerQuestion, qindex)
            : Result(totalScore,resetQuiz),
      ),
    );
  }
}
