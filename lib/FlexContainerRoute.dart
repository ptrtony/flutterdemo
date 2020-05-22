import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexContainerRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FlexContainerState();
}

class FlexContainerState extends State<FlexContainerRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("弹性布局"),
      ),
      body: Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 30.0,
                  color: Colors.red,
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 30.0,
                    color: Colors.green,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
                height: 100,
                child: Flex(
                  direction: Axis.vertical,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.red,
                        )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.lightGreen,
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.amberAccent,
                        ))
                  ],
                )),
          )
        ],
      ),
    );
  }
}
