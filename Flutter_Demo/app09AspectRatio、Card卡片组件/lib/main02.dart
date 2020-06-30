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
    return  ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三",style: TextStyle(fontSize: 28),),
                subtitle: Text("高级搬砖师"),
              ),
              ListTile(
                title: Text("电话：Xxx"),
              ),
              ListTile(
                title: Text("地址：Xxx"),
              ),

            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("李四",style: TextStyle(fontSize: 28),),
                subtitle: Text("高级搬砖师"),
              ),
              ListTile(
                title: Text("电话：Xxx"),
              ),
              ListTile(
                title: Text("地址：Xxx"),
              ),

            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("王五",style: TextStyle(fontSize: 28),),
                subtitle: Text("高级搬砖师"),
              ),
              ListTile(
                title: Text("电话：Xxx"),
              ),
              ListTile(
                title: Text("地址：Xxx"),
              ),

            ],
          ),
        )
      ],
    );
  }

}

