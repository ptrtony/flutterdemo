


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlignRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: AppBar(
          title: Text("对齐和相对定位"),
        ),
        body: Container(
          width: 200,
          height: 200,
          color:Colors.blue[20],
          child: Align(
            alignment: Alignment.topRight,
            child: FlutterLogo(
              size: 20,
            ),
          ),
        ),
      );
  }

}