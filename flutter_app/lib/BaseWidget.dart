import 'package:flutter/material.dart';


abstract class BaseStateLessWidget extends StatelessWidget implements BaseWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getTitle() == null ? "" : getTitle()),
      ),
      body: createBody(),
    );
  }
}

abstract class BaseWidget{

  String getTitle();

  Widget createBody();
}