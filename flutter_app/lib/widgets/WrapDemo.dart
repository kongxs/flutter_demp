import 'package:flutter/material.dart';
import 'package:flutter_app/BaseWidget.dart';
import 'package:fluttertoast/fluttertoast.dart';

///流布局
///
///
///
///
class WrapDemo extends BaseStateLessWidget {
  @override
  Widget createBody() {
    return Wrap(
      children: <Widget>[

        Container(
          height: 50,
          color: Colors.cyan,
          child: RaisedButton(
              onPressed: _clicked,
            child: Text("Hello"),
          ),
          margin: EdgeInsets.fromLTRB(10, 19, 10, 0),
          constraints: BoxConstraints(
              minWidth: 50
          ),
        ),

        Container(
          margin: EdgeInsets.fromLTRB(10, 19, 10, 0),
          height: 50,
          color: Colors.cyan,
          child: Text("Hello"),
          constraints: BoxConstraints(
              minWidth: 50
          ),
        ),


        Container(
          margin: EdgeInsets.fromLTRB(10, 19, 10, 0),
          height: 50,
          color: Colors.cyan,
          child: Text("Helloasdfasdfs"),
          constraints: BoxConstraints(
            minWidth: 50
          ),
        ),


        Container(
          height: 50,
          margin: EdgeInsets.fromLTRB(10, 19, 10, 0),
          color: Colors.cyan,
          child: Text("Hello"),
          constraints: BoxConstraints(
              minWidth: 50
          ),
        ),



        Container(
          height: 50,
          margin: EdgeInsets.fromLTRB(10, 19, 10, 0),
          color: Colors.cyan,
          child: Text("众人过阿斯蒂芬"),
          constraints: BoxConstraints(
              minWidth: 50
          ),
        ),

      ],
    );
  }

  @override
  String getTitle() {
    return "Stack demo ";
  }




  void _clicked() {
    Fluttertoast.showToast(msg: "clicked");
  }
}

class a extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }

}


