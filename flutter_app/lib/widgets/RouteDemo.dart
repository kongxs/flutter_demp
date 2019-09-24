import 'package:flutter/material.dart';
import 'package:flutter_app/BaseWidget.dart';
import 'package:fluttertoast/fluttertoast.dart';

///命名路由使用
///首先在 materialApp里面配置路由信息，参考 {@link main.dart}
///然后通过 Navigator.pushNamed(context, "/home"), push进入页面
///
///
///
class RouteDemo extends BaseStateLessWidget {


  @override
  Widget createBody() {
    return Center(
        child: Container(
          height: 100,
          width: 100,
          child: GestureDetector(
            child: Card(
              child: Text(
                "card" ,
                textAlign: TextAlign.center,
              ),
              elevation: 10,
              margin:EdgeInsets.all(30) ,
            ),
            onTap: () => {
              Navigator.pushNamed(context, "/home"),
            },
          )
        ),
    );
  }

  @override
  String getTitle() {
    return "命名路由 ";
  }



}


