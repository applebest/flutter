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
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Container(
          child: Text(
            "波多野结衣老师😎",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593280868487&di=d5a23a9de5c39a883b2c838f1aaa38dd&imgtype=0&src=http%3A%2F%2Fimg2.imgtn.bdimg.com%2Fit%2Fu%3D1713593507%2C264528416%26fm%3D214%26gp%3D0.jpg"),
        Container(
          child: Text(
            "里美尤利娅老师😘",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2942164151,4282340584&fm=26&gp=0.jpg"),
        Container(
          child: Text(
            "里美尤利娅老师😍",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593280915567&di=f7896ae0e1cfd7fd29f953415dce7ed9&imgtype=0&src=http%3A%2F%2Fimg.361games.com%2Ffile%2Ftu%2Fshow%2Fa5a2rkvop5t.jpg"),
        Container(
          child: Text(
            "里美尤利娅老师(づ￣3￣)づ╭❤～",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),

        Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593280967299&di=e87eb6dbd75e2a9a6143bab3e381644a&imgtype=0&src=http%3A%2F%2Fimg0.imgtn.bdimg.com%2Fit%2Fu%3D2588376940%2C1926392577%26fm%3D214%26gp%3D0.jpg"),
      ],
    );
  }
  
  
}

