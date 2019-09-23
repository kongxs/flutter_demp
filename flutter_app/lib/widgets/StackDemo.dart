import 'package:flutter/material.dart';
import 'package:flutter_app/BaseWidget.dart';
import 'package:fluttertoast/fluttertoast.dart';


class StackDemo extends BaseStateLessWidget {
  @override
  Widget createBody() {
    return Center(
      child:  Stack(
        children: <Widget>[
          buildWidget1(),
          buildWidget2(),
        ],
      ),
    );
  }

  @override
  String getTitle() {
    return "Stack demo ";
  }

  Widget buildWidget1() {

    return Container(
      height: 100,
      width: 100,
      child: Text(
        "stack 1 "
      ),
      alignment: Alignment.topLeft,
      color: Colors.lightBlue,
    );

  }

  Widget buildWidget2() {


    return Container(
      height: 100,
      width: 100,
      child: Text(
          "stack 2 "
      ),
      alignment: Alignment.topLeft,
      color: Colors.yellow,
      margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
    );

  }



}


