import 'package:flutter/material.dart';

class answerButton extends StatelessWidget{
  final bool answer;
  final VoidCallback _onTap;


  answerButton(this.answer, this._onTap);
  @override
  Widget build(BuildContext context){
    return new Expanded(
            child: new Material(
              color: answer == true?Colors.greenAccent: Colors.redAccent,
              child: new InkWell(onTap: ()=> _onTap(),
                child: new Center(
                  child: new Container(
                    child: new Text((answer?"True":"False"), style: new TextStyle(color: Colors.white, fontSize: 40.0, fontWeight:FontWeight.bold),
                    )
                  )
                )
              ),
          )
      );
  }
}

