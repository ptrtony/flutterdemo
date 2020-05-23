

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransformRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("transform变换"),
      ),
      
      body:Padding(padding: EdgeInsets.only(top: 60.0),
      child:  Container(
        color: Colors.black45,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[

            Transform(
              alignment: Alignment.topRight,
              transform: Matrix4.skewY(0.3),
              child: new Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.deepOrange,
                child: const Text('Apartment for rent!'),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Transform.translate(offset: Offset(-20.0,-5.0),
              child: Text("hello world"),),
            ),

            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Transform.rotate(angle: 90 ,
                child: Text("hello world"),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Transform.scale(scale: 1.5,
              child: Text("hello world"),),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Text("hello world",style: TextStyle(color:Colors.white),),
                  ),
                ),
                Text("你好",style: TextStyle(color: Colors.green),)
              ],
            )
          ],
        ),
      ),),
    );
  }

}