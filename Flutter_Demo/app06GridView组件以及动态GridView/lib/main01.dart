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
          appBar:AppBar(
            title: Text("flutter demo"),
          ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,    // 一行显示多少个widget
        children: <Widget>[
          Text("这是一个文本"),
          Text("这是一个文本"),
          Text("这是一个文本"),
          Text("这是一个文本"),
          Text("这是一个文本"),
          Text("这是一个文本"),
          Text("这是一个文本"),
          Text("这是一个文本"),
          Text("这是一个文本"),
          Text("这是一个文本"),
        ],
    );
  }

}
