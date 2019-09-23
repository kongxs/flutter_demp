import 'package:flutter/material.dart';
import 'package:flutter_app/BaseWidget.dart';
import 'package:fluttertoast/fluttertoast.dart';


class GridViewDemo extends BaseStateLessWidget {
  @override
  Widget createBody() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,//控制列数
          crossAxisSpacing: 10,//水平间距
          mainAxisSpacing: 10,//纵向间距
        ),
        itemBuilder: _itemBuild,
        itemCount: 10,
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
    );
  }

  @override
  String getTitle() {
    return "GridView demo ";
  }


  Widget _itemBuild(BuildContext context, int index) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: 50,
//      color: Colors.yellow,
        child: Text(
          "Text $index",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),

      ),
      onTap: () => onItemClick(index),
    );
  }

  onItemClick(int index) {
    Fluttertoast.showToast(
        msg: "the item $index is clicked",
        gravity: ToastGravity.CENTER,
    );
  }
}


