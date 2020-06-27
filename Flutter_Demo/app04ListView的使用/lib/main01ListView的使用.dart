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
        ListTile(
         title: Text(
             "dshfkjhdskjfhdjksfhkdjshf",
              style: TextStyle(
                fontSize: 24,
              ),
         ),
          subtitle: Text("时代峻峰凉快圣诞节福利"),
        ),
        ListTile(
          title: Text(
            "dshfkjhdskjfhdjksfhkdjshf",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          subtitle: Text("松哥还或或或"),
        ),
        ListTile(
          title: Text(
              "23432423",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          subtitle: Text("地方个梵蒂冈"),
        ),
        ListTile(
          title: Text("水电费第三方"),
          subtitle: Text("时第三方"),
        )
      ],
    );
  }
  
  
}

