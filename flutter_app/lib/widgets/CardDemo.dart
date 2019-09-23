import 'package:flutter/material.dart';
import 'package:flutter_app/BaseWidget.dart';
import 'package:fluttertoast/fluttertoast.dart';

///自适应布局
///
///
///
///
class CardDemo extends BaseStateLessWidget {
  @override
  Widget createBody() {
    return Center(
        child: Container(
          height: 100,
          width: 100,
          child: Card(
            child: Text(
                "card" ,
              textAlign: TextAlign.center,
            ),
            elevation: 10,
            margin:EdgeInsets.all(30) ,
          ),
        ),
    );
  }

  @override
  String getTitle() {
    return "Stack demo ";
  }



}


