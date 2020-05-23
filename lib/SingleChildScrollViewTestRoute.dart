

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleChildScrollViewTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return new Scaffold(
      appBar: AppBar(title: Text("SingleChildScrollView"),),
      body: Scrollbar(child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
              children:str.split("").map((e) => Text(e,textScaleFactor: 2.0,)).toList()
          ),
        )
      ))
    );
  }

}