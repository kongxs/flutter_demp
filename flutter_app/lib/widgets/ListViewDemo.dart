import 'package:flutter/material.dart';

import '../BaseWidget.dart';



class ListViewDemo extends BaseStateLessWidget {


  var colors = [Colors.blue,Colors.cyan];

  @override
  Widget createBody() {
    return ListView.builder(
        itemBuilder: _buildItem ,
        itemCount: 10,
        scrollDirection: Axis.vertical,
    );
  }

  @override
  String getTitle() {
    return "ListView Demo";
  }


  Widget _buildItem(BuildContext context,int index) {

    var color = index % 2 == 0 ? colors[0] : colors[1];

    return Center(
      child: Container(
        height: 50,
        child: Text(
          'text $index' ,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
//        color: color,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      ),
    );
  }

}