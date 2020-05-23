
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudydemo/Constant.dart';

class ClipTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    Widget avatar = Image.asset(Constant.ASSETS_IMG + "bankcard_icon.png");
      return new Scaffold(
        appBar:AppBar(
          title: Text("剪裁 clip"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              avatar,
              ClipOval(child: avatar,),
              ClipRRect(child: avatar,
              borderRadius: BorderRadius.circular(5.0),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    widthFactor: 0.5,
                    child: avatar,
                  ),
                  Text("你好世界",style: TextStyle(color:Colors.green),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipRect(
                    child: Align(
                      alignment: Alignment.topLeft,
                      widthFactor: 0.5,
                      child: avatar,
                    ),
                  ),
                  Text("你好世界",style: TextStyle(color:Colors.green),)
                ],
              ),

              DecoratedBox(decoration: BoxDecoration(
                color: Colors.red
              ),
                child: ClipRect(
                  clipper: MyClipper(),
                  child: avatar,
                ),
              )
            ],
          ),
        ),
      );
  }

}


class MyClipper extends CustomClipper<Rect>{
  @override
  getClip(Size size) => Rect.fromLTWH(10.0, 15.0, 40.0, 30.0);

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;

}