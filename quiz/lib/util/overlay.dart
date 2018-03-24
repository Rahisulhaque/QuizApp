import 'package:flutter/material.dart';

class YesNoOverlay extends StatefulWidget{
  final bool _isYes;

  @override
  State createState() => new YesNoOverlayState();

}
class YesNoOverlayState extends State<YesNoOverlay>
{ 
  @override
  Widget build(BuildContext context){
    return new Material(
      color: Colors.black54,
      child: new InkWell(
        onTap:()=> print("you have tapped the overlay"),
        child :new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                color:Colors.white,
                shape: BoxShape.circle
              ),
              child: new Icon(widget._isYes== true?Icons.done: Icons.clear, color: Colors.redAccent, size:40.00,),

            ),
            new Text(widget._isYes== true ?"Correct!": "Wrong",style:new TextStyle(color: Colors.white, fontSize:30.00, fontWeight:FontWeight.bold, fontFamily:'Raleway'))
            
          ],
        )
      )
    );
  }

}