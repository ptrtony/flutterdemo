import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudydemo/StaggerAnimation.dart';

class StaggerRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StaggerState();
}

class _StaggerState extends State<StaggerRoute> with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = new AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _playerAnimation();
      },
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.1),
            border:Border.all(
              color: Colors.black.withOpacity(0.5)
            )
          ),
          child: StaggerAnimation(
            controller: _controller,
          ),
        ),
      ),
    );
  }

  Future<Null> _playerAnimation() async {
    try {
      //先正向执行动画
      await _controller.forward();
      //再反向执行动画
      await _controller.reverse();
    } on TickerCanceled {
      // the animation got canceled, probably because we were disposed
    }
  }
}
