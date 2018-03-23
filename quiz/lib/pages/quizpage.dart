import 'package:flutter/material.dart';

import '../util/ques.dart';
import '../util/quiz.dart';

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
          new Expanded( //true button
            child: new Material(
            color: Colors.greenAccent,
            child: new InkWell(onTap: ()=> print("true"),
            child: new Center(
            child: new Container(
            child: new Text("True",style: new TextStyle(color: Colors.white, fontSize: 40.0, fontWeight:FontWeight.bold),)
              )
          )),
        )
          ),
            new Expanded(
               child: new Material(
            color: Colors.redAccent,
            child: new InkWell(onTap: ()=> print("False"),
            child: new Center(
            child: new Container(
            child: new Text("False",style: new TextStyle(color: Colors.white, fontSize: 40.0, fontWeight:FontWeight.bold),)
              )
          )),
        )
          

            )],
      )],
    );
  }

}