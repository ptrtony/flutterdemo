import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormTestRouter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormTestState();
}

class _FormTestState extends State<FormTestRouter> {
  TextEditingController _usernameTextController = new TextEditingController();
  TextEditingController _passwordTextController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("form test"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
          key: _formKey,
          autovalidate: true,
          child: Column(
            children: <Widget>[
              TextFormField(
                autofocus: true,
                controller: _usernameTextController,
                decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "请输入用户名",
                    icon: Icon(Icons.person)),
                // 校验用户名
                validator: (v) {
                  return v
                      .trim()
                      .length > 0 ? null : "用户名不能为空";
                },
              ),

              TextFormField(
                controller: _passwordTextController,
                decoration: InputDecoration(
                    labelText: "密码",
                    hintText: "请输入密码",
                    icon: Icon(Icons.lock)
                ),
                validator: (v) {
                  return v
                      .trim()
                      .length > 0 ? null : "密码不能为空";
                },
              ),

              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child:Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          color: Theme.of(context).primaryColor,
                          child: Text("登录"),
                          textColor: Colors.white,
                          onPressed: (){
                          if((_formKey.currentState as FormState).validate()){
                            print("登录成功");
                          }
                      }),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
