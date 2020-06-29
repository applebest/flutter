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
          title: Text("我是title"),
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
    return Row(
      //竖着方向布局组件
      children: <Widget>[
        IconContainer(    // 宽度固定
          Icons.home,
          color: Colors.yellow,
        ),
        Expanded(  // 自适应
          flex: 1,
          child: IconContainer(
            Icons.home,
            color: Colors.green,
          ),
        ),
        IconContainer( // 宽度固定
          Icons.home,
          color: Colors.yellow,
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.red;
  IconData icon;

  IconContainer(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
        color: this.color,
        child: Center(
            child: Icon(this.icon, size: this.size, color: Colors.white)));
  }
}
