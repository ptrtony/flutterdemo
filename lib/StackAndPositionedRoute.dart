

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackAndPositionedRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return new Scaffold(appBar: AppBar(
        title: Text("层叠布局"),
      ),
        body: ConstrainedBox(constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(child: Text("hello world",style: TextStyle(color: Colors.white),),
            color: Colors.red,),
            Positioned(child: Text("i`m jack"),top: 20,),
            Positioned(child: Text("your friend"),left: 20,)
          ],
        ),),
      );
  }

}