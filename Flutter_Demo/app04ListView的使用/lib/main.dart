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
          title: Text("列表"),),
           body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300,
      child: ListView(  // 默认是垂直列表，在垂直列表中宽度无作用
        scrollDirection:Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180,
            height: 180,
            color: Colors.deepOrange,
          ),
          Container(
            width: 280,
            height: 280,
            color: Colors.deepPurpleAccent,
            child: ListView(
              children: <Widget>[
                Text("Stella cox （英国女优  老司机滴滴）"),
                Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593282643441&di=e9030671dbdc2cbf917b485d529e7e90&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201805%2F17%2F20180517121015_CmZN2.jpeg"),
              ],
            ),
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.blue,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.yellow,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
  
  
}

