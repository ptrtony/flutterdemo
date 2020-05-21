

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipRouter extends StatelessWidget{
  TipRouter({Key key,@required this.text}):super(key:key);
  final String text;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("提示"),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
              children: <Widget>[
                Text(text),
                RaisedButton(
                  onPressed: ()=>{
                    Navigator.pop(context,"我是返回结果")
                  },
                  child: Text("返回"),
                )
              ],
          )
        ),
      );
  }

}