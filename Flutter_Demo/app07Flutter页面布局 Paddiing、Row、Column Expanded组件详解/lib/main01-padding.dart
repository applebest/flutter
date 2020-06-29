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
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 375 / 667,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593408358618&di=fbd259b6ca3b0eb20cee1a05325631e3&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Fb%2Feb%2F09fc1111058_250_350.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593408358615&di=f2a6843ceca89f3d5c97616674c003fe&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Fc%2Fd1%2Fcd20677729.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593408358618&di=fbd259b6ca3b0eb20cee1a05325631e3&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Fb%2Feb%2F09fc1111058_250_350.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593408358618&di=fbd259b6ca3b0eb20cee1a05325631e3&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Fb%2Feb%2F09fc1111058_250_350.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593408358618&di=fbd259b6ca3b0eb20cee1a05325631e3&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Fb%2Feb%2F09fc1111058_250_350.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593408358618&di=fbd259b6ca3b0eb20cee1a05325631e3&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Fb%2Feb%2F09fc1111058_250_350.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593408358618&di=fbd259b6ca3b0eb20cee1a05325631e3&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Fb%2Feb%2F09fc1111058_250_350.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593408358618&di=fbd259b6ca3b0eb20cee1a05325631e3&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Fb%2Feb%2F09fc1111058_250_350.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
