import 'package:flutter/material.dart';
import 'res/listData.dart';

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
      children:listData.map((e){
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 309 / 192,
                child: Image.network(
                  e["imageUrl"],
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                //CircleAvatar 处理头像
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    e["imageUrl"]
                  )
                ),
                title: Text(e["title"]),
                subtitle: Text(e["description"],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              )
            ],
          ),
        );
      }).toList()
    );
  }
}
