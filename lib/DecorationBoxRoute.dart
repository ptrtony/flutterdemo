

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DecorationBoxRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("装饰容器"),
        ),
        body: Column(
          children: <Widget>[
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.red,Colors.yellow[200]]),
                borderRadius: BorderRadius.circular(3.0),
                boxShadow: [BoxShadow(
                  color: Colors.black45,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 4.0
                )],
              ),
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 18.0),
              child: Text("login",style: TextStyle(color: Colors.white),),),
            )
          ],
        ),
      );
  }
  
}