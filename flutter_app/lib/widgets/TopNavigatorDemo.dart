import 'package:flutter/material.dart';
import 'package:flutter_app/BaseWidget.dart';
import 'package:fluttertoast/fluttertoast.dart';

///
///
///
///
class TopNavigatorDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "na",
        home: MyHomeDemo(),
    );
  }



}

class MyHomeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(

          title: Text("appbar title "),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "woshi1",
              ),
              Tab(
                text: "woshi2",
              ),

            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Text("11111"),
            Text("22222"),
          ],
        ),
      ),
    );
  }
}


