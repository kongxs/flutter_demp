import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/CardDemo.dart';
import 'package:flutter_app/widgets/ExpandDemo.dart';
import 'package:flutter_app/widgets/GridViewDemo.dart';
import 'package:flutter_app/widgets/ImageDemo.dart';
import 'package:flutter_app/widgets/ListViewDemo.dart';
import 'package:flutter_app/widgets/StackDemo.dart';
import 'package:flutter_app/widgets/WrapDemo.dart';
import './widgets/TextDemo.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {


  var widgets = ["Text" , "Image","ListView" , "GridView" ,"Stack","Expand","CardDemo","WrapDemo"];

  var colors = [Colors.cyan,Colors.black12];



  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Flutter Demo"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView.builder(
          scrollDirection: Axis.vertical,
            itemBuilder: _buildItem,
            itemCount: widgets.length,
        )
      ),
    );
  }

  Widget _buildItem(BuildContext context,int index) {

    var color = index % 2 == 0 ? colors[0] : colors[1];

    return new GestureDetector(
      child: Container(
        child: Text(widgets[index]),
        alignment: Alignment.center,
        height: 50,
        color: color,
      ),
      onTap: ()=> onItemClick(context,index),
    );
  }

  onItemClick(BuildContext context,int index) {

    var page ;

    switch(widgets[index]) {
      case "Text" :
        page = TextDemo();
        break;
      case "Image" :
        page = ImageDemo();
        break;
      case "ListView" :
        page = ListViewDemo();
        break;
      case "GridView" :
        page = GridViewDemo();
        break;
      case "Stack" :
        page = StackDemo();
        break;
        case "Expand" :
        page = ExpandDemo();
        break;
        case "CardDemo" :
        page = CardDemo();
        break;
        case "WrapDemo" :
        page = WrapDemo();
        break;
      default:
        break;
    }
    if (null != page) {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => page));
    } else {

      Fluttertoast.showToast(msg: "未知页面");

    }

  }

}

