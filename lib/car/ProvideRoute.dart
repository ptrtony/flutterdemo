

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudydemo/car/Consumer.dart';

import 'CardModel.dart';
import 'ChangeNotifierProvider.dart';
import 'Item.dart';

class ProvideRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ProvideState();

}

class ProvideState extends State<ProvideRoute>{
  @override
  Widget build(BuildContext context) {
      return Scaffold(appBar:
        AppBar(title: Text("跨组件状态共享"),),
        body: Center(
          child: ChangeNotifierProvider<CardModel>(
            data: CardModel(),
            child: Builder(builder: (context){
              return Column(
                children: <Widget>[
                  Builder(builder: (context){
                    return Consumer<CardModel>(
                      builder: (context,car)=> Text("总价为:${car.totalPrice}"),
                    );
                  }),
                  Builder(builder: (context){
                    return RaisedButton(
                        child: Text("跨组件状态"),
                        onPressed: (){
                        ChangeNotifierProvider.of<CardModel>(context).add(Item(2,20.0));
                    });
                  })
                ],
              );
            }),
          ),
        ),
      );
  }

}