

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchAndCheckBoxTestRouter extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SwitchAndCheckBoxState();

}

class _SwitchAndCheckBoxState extends State<SwitchAndCheckBoxTestRouter>{

  bool _switchSelected = true;//维护单选开关状态
  bool _checkboxSelected = true;////维护复选框状态
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("switch and check test route"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Switch(value: _switchSelected, onChanged: (value){
                setState(() {
                  _switchSelected = value;
                });
              }),
              Checkbox(value: _checkboxSelected, onChanged: (value){
                setState(() {
                  _checkboxSelected = value;
                });
              })
            ],
          ),
        ),
      );
  }

}