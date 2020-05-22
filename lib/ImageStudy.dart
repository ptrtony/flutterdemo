import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudydemo/Constant.dart';

class ImageStudy extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: AppBar(
          title: Text("图片和icon"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: <Widget>[
                  Image(
                    image: NetworkImage("http://img0.imgtn.bdimg.com/it/u=3225163326,3627210682&fm=26&gp=0.jpg"),width: 100,
                    fit: BoxFit.fill,
                  ),
                  Text(
                    "BoxFit.fill",
                  )
                ],
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: <Widget>[
                  Image(
                    image: NetworkImage("http://img0.imgtn.bdimg.com/it/u=3225163326,3627210682&fm=26&gp=0.jpg"),width: 100,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "BoxFit.cover",
                  )
                ],
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: <Widget>[
                  Image(
                    image: NetworkImage("http://img0.imgtn.bdimg.com/it/u=3225163326,3627210682&fm=26&gp=0.jpg"),width: 100,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    "BoxFit.contain",
                  )
                ],
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: <Widget>[
                  Image(
                    image: NetworkImage("http://img0.imgtn.bdimg.com/it/u=3225163326,3627210682&fm=26&gp=0.jpg"),width: 100,
                    fit: BoxFit.fitWidth,
                  ),
                  Text(
                    "BoxFit.fitWidth",
                  )
                ],
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: <Widget>[
                  Image(
                    image: NetworkImage("http://img0.imgtn.bdimg.com/it/u=3225163326,3627210682&fm=26&gp=0.jpg"),fit: BoxFit.fitHeight,
                  ),
                  Text(
                    "BoxFit.fitHeight",
                  )
                ],
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: <Widget>[
                  Image.network("http://img0.imgtn.bdimg.com/it/u=3225163326,3627210682&fm=26&gp=0.jpg",width: 100,),
//                  Image(
//                    image: NetworkImage("http://img0.imgtn.bdimg.com/it/u=3225163326,3627210682&fm=26&gp=0.jpg"),
//                    width: w,
//                    fit: BoxFit.none,
//                  ),
                  Text(
                    "BoxFit.none",
                  )
                ],
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: <Widget>[
                  Image(
                    image: AssetImage(Constant.ASSETS_IMG + "bankcard_icon.png") ,
                    width: 100.0,
                    color: Colors.blue,
                    colorBlendMode: BlendMode.difference,
                  ),
                  Text("asset image")
                ],
              )
            ],
          ),
        ),
      );
  }

}