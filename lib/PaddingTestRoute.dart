

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaddingTestRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("填充"),
      ),
      body: Padding(padding: EdgeInsets.all(16.0)
      ,child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              //左边添加8像素补白
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Hello world"),
            ),
            Padding(
              //上下各添加8像素补白
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("I am Jack"),
            ),
            Padding(
              // 分别指定四个方向的补白
              padding: const EdgeInsets.fromLTRB(20.0,.0,20.0,20.0),
              child: Text("Your friend"),
            )
          ],
        ),),
    );
  }

}