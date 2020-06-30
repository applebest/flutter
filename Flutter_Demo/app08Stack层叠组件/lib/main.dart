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
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
//          alignment: Alignment.center, // 所有组件显示位置
          children: <Widget>[
            Positioned(
              left: 10,
              child: Icon(Icons.home, size: 40, color: Colors.white),
            ),
            Positioned(
                bottom: 0,
                left: 10,
                child: Icon(Icons.search, size: 30, color: Colors.orange)),
            Positioned(
                right: 0,
                child: Icon(Icons.send, size: 60 , color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
