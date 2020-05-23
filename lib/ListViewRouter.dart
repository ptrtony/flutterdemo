

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewRouter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("ListView"),),
        body: ListView.builder(
            itemCount: 100,
            itemExtent: 50,
            itemBuilder: (BuildContext context,int index){
              return ListTile(title: Text("$index"),);
            }),
      );
  }

}