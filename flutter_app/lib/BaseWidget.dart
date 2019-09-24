import 'package:flutter/material.dart';


abstract class BaseStateLessWidget extends StatelessWidget implements BaseWidget {

  var context ;

  @override
  Widget build(BuildContext context) {
    this.context = context;
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