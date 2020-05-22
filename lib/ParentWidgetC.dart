import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ParentWidgetC extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _ParentWidgetStateC();
}

class _ParentWidgetStateC extends State<ParentWidgetC>{
  bool _action = false;

  void _handleTapBoxChange(bool newValue){
    setState(() {
      _action = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new TapBoxC(action:_action,onChange: _handleTapBoxChange),
    );
  }

}


//===================TapboxC=======================
class TapBoxC extends StatefulWidget{
  TapBoxC({Key key,this.action:false,@required this.onChange}):super(key:key);
  final bool action;
  final ValueChanged<bool> onChange;


  @override
  State<StatefulWidget> createState() => _TapBoxCState();

}

class _TapBoxCState extends State<TapBoxC>{
  bool _heiglight = false;

  void _handTapDown(TapDownDetails details){
    setState(() {
      _heiglight = true;
    });
  }

  void _handTapUp(TapUpDetails details){
    setState(() {
      _heiglight = false;
    });
  }

  void _handleTapCancel(){
    setState(() {
      _heiglight = false;
    });
  }

  void _handTap(){
    widget.onChange(!widget.action);
  }


  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTapDown:_handTapDown ,
      onTapUp: _handTapUp,
      onTap: _handTap,
      onTapCancel: _handleTapCancel,
      child: new Container(
        child: new Center(
          child: new Text(widget.action?"Active":"Inaction",
            style: new TextStyle(fontSize: 32.0,color: Colors.white),),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
            color: widget.action?Colors.lightGreen[700]:Colors.grey[600],
            border: _heiglight?new Border.all(color: Colors.teal[700],width: 10.0):null
        ),
      ),

    );
  }
}
