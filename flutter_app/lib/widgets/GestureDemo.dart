import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



class GestureDemo extends StatefulWidget {
  @override
  _GestureDemoState createState() => _GestureDemoState();
}

class _GestureDemoState extends State<GestureDemo> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () => {
        print("onTap")
      },

      onLongPress: () => {
        print("onLongPress")
      },

      onHorizontalDragEnd: (DragEndDetails dragEndDetails) => {
        print("onHorizontalDragEnd")
      },

      onHorizontalDragStart: (DragStartDetails details) => {
        print("onHorizontalDragStart")
      },

      onHorizontalDragUpdate: (DragUpdateDetails dragEndDetails) => {
        print("onHorizontalDragUpdate")
      },

      onHorizontalDragCancel: () => {
        print("onHorizontalDragCancel")
      },


    );
  }
}


