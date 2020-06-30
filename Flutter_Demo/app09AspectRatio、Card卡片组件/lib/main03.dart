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
        appBar: AppBar(title: Text("flutter")),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 309 / 299,
                child: Image.network(
                  "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2976863415,2458176332&fm=26&gp=0.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593510943979&di=3c3556965635813df83459ed79b7abaf&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201801%2F27%2F20180127173516_Queaw.thumb.700_0.jpeg",
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ),
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxx"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 309 / 192,
                child: Image.network(
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593511494660&di=f303cd76ab063fa49a8573f8945290ae&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201310%2F19%2F235439yh04c010wm0qrk5d.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                //CircleAvatar 处理头像
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593510943979&di=14ba0663efb100c158d30065e368ad52&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201403%2F13%2F165416zyku4umoo3ghmkgc.jpg"),
                ),
                title: Text("dsfds"),
                subtitle: Text("21312341241242"),
              )
            ],
          ),
        ),
      ],
    );
  }
}
