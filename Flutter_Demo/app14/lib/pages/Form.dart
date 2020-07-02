
import "package:flutter/material.dart";

class FormPage extends StatefulWidget {

  String title;
//  FormPage(this.title);
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: (){

        },
      ),
      appBar: AppBar(
        title: Text(widget.title ?? "哈哈哈"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("我是表单页面"),
          ),
          ListTile(
            title: Text("我是表单页面"),
          ),
          ListTile(
            title: Text("我是表单页面"),
          ),
          ListTile(
            title: Text("我是表单页面"),
          ),
        ],
      ),

    );
  }
}
