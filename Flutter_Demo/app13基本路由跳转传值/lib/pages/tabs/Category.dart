import 'package:flutter/material.dart';
import '../Form.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到表单页面"),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context){
                    var page = FormPage();
//                    page.title = "传值！！！！";
                    return page;
                  }
               )
            );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        )
      ],
    );
  }
}

