

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinearContainerRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => LinearContainerState();

}

class LinearContainerState extends State<LinearContainerRoute>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("线性布局"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("hello world"),
              Text("i am jack")
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("hello world"),
              Text("i am jack")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text("hello world"),
              Text("i am jack")
            ],
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Text("hello world",style: TextStyle(fontSize: 18),),
            Text("i am jack")
          ],),
          ConstrainedBox(
            constraints: BoxConstraints(minWidth: double.infinity),
            child: Column(
                children: <Widget>[
                  Text("hello world"),
                  Text("i am jack")
                ],
            ),
          )
        ],
      ),
    );
  }

}