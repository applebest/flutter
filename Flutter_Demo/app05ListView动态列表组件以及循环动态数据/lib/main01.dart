import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter demo"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  List<Widget> _getData() {
    return [
      ListTile(
        title: Text("我是一个列表"),
      ),
      ListTile(
        title: Text("我是一个列表"),
      ),
      ListTile(
        title: Text("的上飞机是打开路径"),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}
