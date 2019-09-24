import 'package:flutter/material.dart';
import 'package:flutter_app/BaseWidget.dart';
import 'package:fluttertoast/fluttertoast.dart';

///
///
///
///
class TopNavigatorDemo2 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomeState();
  }

}

class MyHomeState extends State with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // tabbar 放到 title里，可以取消appbar title的内容
        appBar: AppBar(
//          title: TabBar(
//            controller: this._tabController,
//            tabs: <Widget>[
//              Text("111"),
//              Text("222"),
//            ],
//          ),
          bottom: TabBar(
            controller: this._tabController,
            tabs: <Widget>[
              Text("111"),
              Text("222"),
            ],
          ),
        ),
        body: TabBarView(
          controller: this._tabController,
          children: <Widget>[
            Text("111"),
            Text("222"),

          ],
        ),
    );
  }
}



