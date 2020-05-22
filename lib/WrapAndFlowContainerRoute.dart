import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TestFlowDelegate.dart';

class WrapAndFlowContainerRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("流式布局"),
      ),
      body: Column(
        children: <Widget>[
          Wrap(
            spacing: 8.0, // 主轴(水平)方向间距
            runSpacing: 4.0, // 纵轴（垂直）方向间距
            alignment: WrapAlignment.center,
            children: <Widget>[
              new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text("A")),
                  label: new Text("Hamilton")),
              new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text("M")),
                  label: new Text("Lafayette")),
              new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text("H")),
                  label: new Text("Mulligan"))
              ,
              new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text("J")),
                  label: new Text("Laurens"))
            ],
          ),

          Padding(padding: EdgeInsets.only(top: 30.0),
          child: Flow(
            delegate: TestFlowDelegate(margin: EdgeInsets.all(10.0)),
            children: <Widget>[
              new Container(width: 80.0, height:80.0, color: Colors.red,),
              new Container(width: 80.0, height:80.0, color: Colors.green,),
              new Container(width: 80.0, height:80.0, color: Colors.blue,),
              new Container(width: 80.0, height:80.0,  color: Colors.yellow,),
              new Container(width: 80.0, height:80.0, color: Colors.brown,),
              new Container(width: 80.0, height:80.0,  color: Colors.purple,),
            ],
          ),)
        ],
      ),
    );
  }
}
