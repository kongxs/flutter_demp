import 'package:flutter/material.dart';
import 'package:flutter_app/BaseWidget.dart';
import 'package:fluttertoast/fluttertoast.dart';

///自适应布局
///
///
///
///
class ExpandDemo extends BaseStateLessWidget {
  @override
  Widget createBody() {
    return Row(
        children: <Widget>[

          Expanded(
            child: Container(
              height: 100,
              color: Colors.deepOrange,
              child: Text("expanded"),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              height: 100,
              color: Colors.blue,

              child: Text("expanded"),
            ),
            flex: 5,
          ),

          Expanded(
            child: Container(
              height: 100,
              color: Colors.yellow,
              child: Text("expanded"),
            ),
            flex: 2,
          ),
        ],
      );
  }

  @override
  String getTitle() {
    return "Stack demo ";
  }



}


