

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogCheckbox extends StatefulWidget{

  DialogCheckbox({Key key,this.value,@required this.onChange});
  final ValueChanged<bool> onChange;
  final bool value;
  @override
  State<StatefulWidget> createState() => _DialogCheckboxState();
}

class _DialogCheckboxState extends State<DialogCheckbox>{
  bool value;

  @override
  void initState() {
    // TODO: implement initState
    value = widget.value;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
      return Checkbox(value: value, onChanged: (v){
        //将选中状态通过事件的形式抛出
        widget.onChange(v);
        setState(() {
          //更新自身选中状态
          value  = v;
        });
      });
  }

}