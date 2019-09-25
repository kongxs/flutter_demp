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
    return WillPopScope(
        child: Center(
          child: Container(
            height: 100,
            width: 100,
            child: Card(
              child: Text(
                "cardss" ,
                textAlign: TextAlign.center,
              ),
              elevation: 10,
              margin:EdgeInsets.all(30) ,
            ),
          ),
        ),
        onWillPop: _onPopTriger
    );
  }

  @override
  String getTitle() {
    return "Stack demo ";
  }

  Future<bool> _onPopTriger() {
    return showDialog(
        context: context,
        builder: (context) =>
        new AlertDialog(
          content: Text('exit ? '),
          actions: <Widget>[
            FlatButton(
              child: Text("exit"),
              onPressed: () =>
              {
                Navigator.of(context).pop(true),
              },
            ),

            FlatButton(
              child: Text("calcel"),
              onPressed: () =>
              {
                Navigator.of(context).pop(false),
              },
            ),


          ],
        )
    );
  }

}


