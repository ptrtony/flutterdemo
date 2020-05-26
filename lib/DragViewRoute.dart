

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudydemo/Constant.dart';

class DragViewRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ScaleTestRouteState();
}

class _DragViewState extends State<DragViewRoute>{

  double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
      return Stack(
        children: <Widget>[
          Positioned(
              left: _left,
              top: _top,
              child: GestureDetector(
                child: CircleAvatar(child: Text("A"),),
                onPanDown:(DragDownDetails e){
                  //打印手指按下的位置(相对于屏幕)
                  print("用户手指按下：${e.globalPosition}");
                },
                onPanUpdate:(DragUpdateDetails e){
                  setState(() {
                    _left +=e.delta.dx;
                    _top += e.delta.dy;
                  });
                },
                onPanEnd: (DragEndDetails e){
                  print("用户手指抬起：${e.velocity}");
                },
              ))
        ],
      );
  }

}

class _ScaleTestRouteState extends State<DragViewRoute>{
  double _width = 200.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Image.asset(Constant.ASSETS_IMG + "background.png",width: _width,),
        onScaleUpdate: (ScaleUpdateDetails e){
          setState(() {
             _width =  e.scale.clamp(.8, 10.0);
          });
        },

      ),
    );
  }
}