import 'package:flutter/material.dart';

import '../util/ques.dart';
import '../util/quiz.dart';
import '../ui/answerButton.dart';

class QuizPage extends StatefulWidget{
  @override
  State createState() => new QuizPageState();

}

class QuizPageState extends State<QuizPage>{
  @override
  Widget build(BuildContext context){
    return new Stack(
      children: <Widget>[
        new Column(
          
          
           //This is our main page\\
        children: <Widget>[
          new answerButton(true, (){ print("Correct!");})
          ,
          new answerButton(false, (){print("Incorrect!");})
            ],
      )],
    );
  }

}