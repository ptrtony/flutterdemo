import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollControlRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ScrollControllerTestRouteState();
  }
}

class ScrollControllerTestRouteState extends State<ScrollControlRoute> {
  ScrollController _controller = new ScrollController();
  bool showTopBtn = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(_controller.offset); //打印滚动位置
    _controller.addListener(() {
      if (_controller.offset < 1000 && showTopBtn) {
        setState(() {
          showTopBtn = false;
        });
      } else if (_controller.offset >= 1000 && showTopBtn==false) {
        setState(() {
          showTopBtn = true;
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("滚动控件"),
        ),
        body: Scrollbar(
            child: ListView.builder(
                itemExtent: 50.0,
                itemCount: 100,
                controller: _controller,
                itemBuilder: (context, index) {
                  return ListTile(title: Text("$index"),);
                })),
        floatingActionButton: !showTopBtn
            ? null
            : FloatingActionButton(
            child: Icon(Icons.arrow_upward),
            onPressed: () {
              _controller.animateTo(.0,
                  duration: Duration(microseconds: 200), curve: Curves.ease);
            }));
  }
}
