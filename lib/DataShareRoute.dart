
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudydemo/DataShareTestWidget.dart';
import 'package:flutterstudydemo/DataShareWidget.dart';

class DataShareRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _DataShareState();

}

class _DataShareState extends State<DataShareRoute>{
  int data = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("数据共享InheritedWidget"),
      ),

      body: Center(
        child: DataShareWidget(data: data,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(80),
            child: DataShareTestWidget(),),

            RaisedButton(
                child: Text("Increment"),
                onPressed: (){
              setState(() {
                ++data;
              });
            })
          ],
        ),
        ),
      ),
    );
  }
}