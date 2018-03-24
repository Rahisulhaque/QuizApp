import 'package:flutter/material.dart';

class answerButton extends StatelessWidget{
  final bool _answer;
  final VoidCallback _onTap;


  answerButton(this._answer, this._onTap);
  @override
  Widget build(BuildContext context){
    return new Expanded(
            child: new Material(
              color: _answer == true?Colors.greenAccent: Colors.redAccent,
              child: new InkWell(onTap: ()=> _onTap(),
                child: new Center(
                  child: new Container(
                    decoration: new BoxDecoration(
                      border: new Border.all(color:Colors.white, width:5.00),
                      
                    ),
                    padding: new EdgeInsets.all(20.0),
                    child: new Text((_answer?"Yep!":"Nope!"), style: new TextStyle(color: Colors.white, fontSize: 40.0, fontWeight:FontWeight.bold, fontFamily:'Raleway'),
                    )
                  )
                )
              ),
          )
      );
  }
}

