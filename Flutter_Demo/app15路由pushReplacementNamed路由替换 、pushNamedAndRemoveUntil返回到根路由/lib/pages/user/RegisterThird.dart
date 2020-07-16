import 'package:app15/pages/Tabs.dart';
import 'package:flutter/material.dart';

class RegisterThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三步-完成注册"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Text("输入密码完成注册"),
          SizedBox(
            height: 40,
          ),
          RaisedButton(
            onPressed: () {
//            Navigator.of(context).pop();

              Navigator.pushAndRemoveUntil(context, new MaterialPageRoute(
                builder: (BuildContext context) {
                  return Tabs(index: 2,);
                },
              ), (route) => route == null);
            },
            child: Text("确定"),
          )
        ],
      ),
    );
  }
}
