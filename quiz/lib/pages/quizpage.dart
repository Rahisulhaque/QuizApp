import 'package:flutter/material.dart';

import '../util/ques.dart';
import '../util/quiz.dart';
import '../ui/answerButton.dart';
import '../ui/quesPage.dart';
import '../util/overlay.dart';

class QuizPage extends StatefulWidget{
  @override
  State createState() => new QuizPageState();

}

class QuizPageState extends State<QuizPage>{
  @override
  Widget build(BuildContext context){
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          
          
           //This is our main page\\
        children: <Widget>[
          new answerButton(true, (){ print("YessS!");}),
          new quesText("Pizza??", 1),
          new answerButton(false, (){print("NooO!");})
            ],
      ),
      new YesNoOverlay()
      ],
      
    );

  }

}