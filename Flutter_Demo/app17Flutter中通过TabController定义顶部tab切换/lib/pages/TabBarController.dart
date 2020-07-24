import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {  // state初始化
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 2
    );

     dispose(){  // state销毁
      super.dispose();
      _tabController.dispose();
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: Text("TabBarControllerPage"),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(text: "热销"),
            Tab(text: "推荐")
          ],
        ),
      ),

      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(child: Text("热销")),
          Center(child: Text("推荐")),
        ],
      ),


    );
  }
}
