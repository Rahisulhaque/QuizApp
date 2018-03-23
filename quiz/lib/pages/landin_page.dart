import 'package:flutter/material.dart';

class landing_page extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Material(
      color: Colors.pinkAccent,
      child: new InkWell(
        onTap: ()=> print("you have tapped!"),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Let's play a game!", style: new TextStyle(color: Colors.white, fontSize: 40.0, fontWeight:FontWeight.bold),),
            new Text("Tap to start:", style: new TextStyle(color: Colors.white, fontSize: 50.0, fontWeight:FontWeight.bold),)
          ],
        )
      )

    );
  }
}
