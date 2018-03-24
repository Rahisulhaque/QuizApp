import "package:flutter/material.dart";

class quesText extends StatefulWidget{

  final String _question;
  final int    _questionNumber;

  quesText(this._question, this._questionNumber);

  @override createState()=>new quesTextState();
}

class quesTextState extends State<quesText> with SingleTickerProviderStateMixin{
  Animation<double> _fontSizeAnimation;
  AnimationController _fontSizeAnimationController;
  @override
  void initState(){
    super.initState();
      _fontSizeAnimationController = new AnimationController( duration: new Duration(milliseconds: 600), vsync: this);
      _fontSizeAnimation = new CurvedAnimation(parent: _fontSizeAnimationController, curve: Curves.bounceOut);
      _fontSizeAnimation.addListener(()=>this.setState((){})); 
      _fontSizeAnimationController.forward();
  }

  @override
  Widget build(BuildContext context){
    return new Material(
            color: Colors.yellowAccent,
            child: new Padding(
              padding: new EdgeInsets.symmetric(vertical: 20.0),
              
              child: new Center(
              child:new Text( widget._questionNumber.toString()+". Do you like: " + widget._question, style:new TextStyle(color: Colors.black, fontSize: _fontSizeAnimation.value*20, fontWeight:FontWeight.bold, fontFamily:'Raleway'),),
              ),
            )
          );
  }

}