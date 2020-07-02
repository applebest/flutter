
import 'package:flutter/material.dart';
import 'tabs/Home.dart';  // 抽离首页组件
import 'tabs/Category.dart'; //抽离分类组件
import 'tabs/Setting.dart';// 抽离设置组件


class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  // 记录当前index
  int _currentIndex = 0;

  // 创建页面组件数组
  List<Widget> _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter"),
      ),
      body: this._pageList[this._currentIndex], // 选中哪个显示哪个
      bottomNavigationBar:BottomNavigationBar(
        iconSize: 45.0, //图标大小
        currentIndex: this._currentIndex, // 当前选中的index
        onTap: (int index){   // 点击回调
          setState(() { // 改变状态
            this._currentIndex = index;
          });
        },
        items: [  // 底部的items集合
          BottomNavigationBarItem(  // 每一个itemBar对象
            icon:Icon(Icons.home),
            title: Text("首页"),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.category),
            title: Text("分类"),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.settings),
            title: Text("设置"),
          ),
        ],
      ),
    );
  }
}