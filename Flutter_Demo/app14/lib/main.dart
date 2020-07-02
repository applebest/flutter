import 'package:flutter/material.dart';
import 'pages/Tabs.dart';
import 'pages/Form.dart';
import 'pages/Search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final routes = {
      "/form":(context)=>FormPage(),
      "/search":(context,{arguments})=>SearchPage(arguments:arguments),
  };


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      home: Tabs(),
      onGenerateRoute: (RouteSettings settings){
        final String name = settings.name;
        final Function pageContentBuilder = routes[name];
        if (pageContentBuilder !=  null && settings.arguments !=  null){
            final Route route = MaterialPageRoute(
                builder: (context) =>
                    pageContentBuilder(context, arguments: settings.arguments));
            return route;
        }else{
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context));
          return route;
        }
      },

    );
  }
}


