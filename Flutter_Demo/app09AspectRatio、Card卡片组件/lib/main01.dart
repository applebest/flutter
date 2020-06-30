import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(
            title: Text("flutter")
        ),
        body: MyHomePage(),
      ),

    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  AspectRatio(  // 宽高比组件
          aspectRatio:3.0/1.0,
          child: Container(
            color: Colors.red,
          ),
      );
  }

}

