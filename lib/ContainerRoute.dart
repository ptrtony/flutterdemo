

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(appBar:AppBar(
        title: Text("container容器"),
      ),
        body: Column(children: <Widget>[
          Container(
            constraints: BoxConstraints.tightFor(width: 200.0,height: 150.0),
            margin: EdgeInsets.only(left: 80.0,top: 50.0),
            decoration: BoxDecoration(
              gradient: RadialGradient(colors: [Colors.red,Colors.yellow],//背景径向渐变
                  center: Alignment.topLeft,
                  radius: .98
              ),
              boxShadow: [BoxShadow(
                  color:Colors.black45,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 4.0
              )],
            ),
            transform: Matrix4.rotationZ(.2),
            alignment: Alignment.center,
            child: Text("5.20",style: TextStyle(color: Colors.white,fontSize: 40.0),),


          ),

          Container(margin: EdgeInsets.all(20.0),
            color: Colors.deepOrange,
            child: Text("hello world",style: TextStyle(color: Colors.white),),
          ),
          Container(padding: EdgeInsets.all(20.0),
          color: Colors.deepOrange,
          child: Text("hello world",style: TextStyle(color: Colors.white),),)
          
        ],)
      );
  }
  
}