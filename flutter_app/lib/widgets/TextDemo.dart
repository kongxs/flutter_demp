import 'package:flutter/material.dart';

import '../BaseWidget.dart';



class TextDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextState();
  }

}

class TextState extends State<TextDemo> {
  @override
  Widget build(BuildContext context) {
    return TextContentView();
  }
}

class TextContentView extends BaseStateLessWidget {
  @override
  Widget createBody() {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            "this is text ",
            style: TextStyle(
                backgroundColor: Colors.blue
            ),
          ),
          alignment: Alignment.topLeft,
        ),

        //超出一屏的 text
        Text(
            "this is text demothis is text demothis is text demodemothis is text demodemothis is text demo",
            overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "text demo";
  }

}