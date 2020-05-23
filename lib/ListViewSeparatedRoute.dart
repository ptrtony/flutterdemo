
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewSeparatedRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Widget divider1 = new Divider(color: Colors.blue,);
    Widget divider2 = new Divider(color: Colors.green,);
      return new Scaffold(
        appBar: AppBar(
          title: Text("list view separated"),
        ),
        body: ListView.separated(itemBuilder: (BuildContext context,int index){
          return ListTile(title: Text("$index"),);
        }, separatorBuilder: (BuildContext context,int index){
          return index % 2 ==0? divider1:divider2;
        }, itemCount: 100),
      );
  }

}