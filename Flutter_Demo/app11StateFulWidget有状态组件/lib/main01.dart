
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
           title: Text("title"),
         ),
         body: HomePage(),
       ),
    );
  }
}

// 无状态组件
//class HomePage extends StatelessWidget {
//
//  int countNum = 1;
//
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      children: <Widget>[
//        SizedBox(height: 200,),
//        Text("${this.countNum}"),
//        SizedBox(height: 20),
//        RaisedButton(onPressed: (){
//          this.countNum++;
//
//          print(this.countNum);
//        },
//        child: Text("按钮"),
//        )
//      ],
//    );
//  }
//}

// 自定义有状态组件
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 200,),
        Chip(label: Text("${this.countNum}")
        ),

        SizedBox(height: 20,),
        RaisedButton(onPressed:(){
          setState(() {
            this.countNum++;
          });
        },
          child: Text("按钮"),

        )
      ],
    );
  }
}


