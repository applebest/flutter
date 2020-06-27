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
         title: Text("2424",),
          subtitle: Text("的是非得失"),
          leading: Image.network("https://www.itying.com/images/flutter/1.png")
        ),
        ListTile(
          title: Text("3432546545",),
          subtitle: Text("法规和法规和发挥好过分"),
          leading: Icon(
            Icons.account_balance,
          ),
          trailing: Image.network("https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2393544950,185753394&fm=26&gp=0.jpg"),
        ),

        ListTile(
          title: Text("三十多发的",),
          subtitle: Text("12432435435446打个车"),
          leading: Icon(
            Icons.accessible_forward,
          ),
        ),

        ListTile(
          title: Text("dshfkjhdskjfhdjksfhkdjshf",),
          subtitle: Text("时代峻峰凉快圣诞节福利"),
          leading: Icon(
            Icons.account_box,
            color: Colors.yellow,
          ),
        ),

        ListTile(
          title: Text("dshfkjhdskjfhdjksfhkdjshf",),
          subtitle: Text("时代峻峰凉快圣诞节福利"),
          leading: Icon(
            Icons.add_circle,
          ),
        ),

      ],
    );
  }
  
  
}

