import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ButtonState();

//  new Scaffold(
//  appBar: AppBar(
//  title: Text(
//  "button 演练",
//  style: TextStyle(
//  color: Colors.white,
//  fontSize: 32.0,
//  height: 1.2,
//  fontFamily: "Courier",
//  decoration: TextDecoration.underline,
//  decorationStyle: TextDecorationStyle.dashed
//  ),
//  ),
//  backgroundColor: Colors.blue,
//  ),
//
//
//  return Center(
//  child: Column(
//  children: <Widget>[
//  //RaisedButton
//  RaisedButton(
//  child: Text("normal"),
//  onPressed: ()=>{
//  print("RaisedButton:onClick")
//  },
//  ),
//
//  //FlatButton
//  FlatButton(
//  child: Text("normal"),
//  onPressed: ()=>{
//  print("FlatButton:onClick")
//  },
//  ),
//  //OutlineButton
//  OutlineButton(
//  child: Text("normal"),
//  onPressed: ()=>{
//  print("OutlineButton:onClick")
//  },
//  ),
//  //IconButton
//  IconButton(
//  icon: Icon(
//  Icons.thumb_up,
//  ),
//  onPressed: ()=>{
//  print("IconButton:onClick")
//  },
//  )
//  ],
//  ),
//  );

}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          "button 演练",
          style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              height: 1.2,
              fontFamily: "Courier",
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            //RaisedButton
            RaisedButton(
              child: Text("normal"),
              onPressed: ()=>{
                print("RaisedButton:onClick")
              },
            ),

            //FlatButton
            FlatButton(
              child: Text("normal"),
              onPressed: ()=>{
                print("FlatButton:onClick")
              },
            ),
            //OutlineButton
            OutlineButton(
              child: Text("normal"),
              onPressed: ()=>{
                print("OutlineButton:onClick")
              },
            ),
            //IconButton
            IconButton(
              icon: Icon(
                Icons.thumb_up,
              ),
              onPressed: ()=>{
                print("IconButton:onClick")
              },
            )
          ],
        ),
      ),
    );
  }
}
