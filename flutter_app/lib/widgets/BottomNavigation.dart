import 'package:flutter/material.dart';
import 'package:flutter_app/BaseWidget.dart';
import 'package:flutter_app/widgets/tabs/HomeTabs.dart';
import 'package:flutter_app/widgets/tabs/SearchTabs.dart';
import 'package:fluttertoast/fluttertoast.dart';

///
///
///
///
///
class BottomNavigation extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TabsState();
  }

}

class _TabsState extends State {

  var currentIndex = 0;

  List _pageList = [HomeTabs(),SearchTabs()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigation"),
      ),
      body: _pageList[currentIndex],


      bottomNavigationBar: BottomNavigationBar(

        iconSize: 19,
        fixedColor: Colors.red,//选中颜色

        currentIndex: currentIndex,//默认选中

        type: BottomNavigationBarType.fixed,


        onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
        },

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("搜索")
          ),


        ],

      ),

    );
  }

}