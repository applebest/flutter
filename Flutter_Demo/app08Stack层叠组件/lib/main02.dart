import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(
          title: Text("fluuter"),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Stack(
        // 0，0代表中心位置， Alignment指定参数x y 取值范围-1~~1 适用于子控件是单个情况
        alignment: Alignment(0 ,0),
        children: <Widget>[
          Container(
            height: 400,
            width: 300,
            color: Colors.red,
          ),
          Text("我是一个文本",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
  
}

