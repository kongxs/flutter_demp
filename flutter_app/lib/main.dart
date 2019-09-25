import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/BottomNavigation.dart';
import 'package:flutter_app/widgets/CardDemo.dart';
import 'package:flutter_app/widgets/ExpandDemo.dart';
import 'package:flutter_app/widgets/GridViewDemo.dart';
import 'package:flutter_app/widgets/ImageDemo.dart';
import 'package:flutter_app/widgets/ListViewDemo.dart';
import 'package:flutter_app/widgets/StackDemo.dart';
import 'package:flutter_app/widgets/TopNavigatorDemo.dart';
import 'package:flutter_app/widgets/TopNavigatorDemo2.dart';
import 'package:flutter_app/widgets/WrapDemo.dart';
import './widgets/TextDemo.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'widgets/RouteDemo.dart';
import 'widgets/tabs/HomeTabs.dart';
import 'widgets/tabs/SearchTabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  var routes = {

    '/home':(context,{arguments}) => HomeTabs(arguments:arguments),

    '/search':(context) => SearchTabs(),

  };


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
//      routes: routes,
      //固定写法
//      initialRoute: ,//默认页面
      onGenerateRoute: (RouteSettings settings) {

        final String name = settings.name;

        final Function pageBuilder = this.routes[name];

        if (pageBuilder != null) {

          if (settings.arguments != null) {
            final Route route = MaterialPageRoute(

              builder: (context) => pageBuilder(context,arguments: settings.arguments),

            );
            return route;
          } else {

            final Route route = MaterialPageRoute(

              builder: (context) => pageBuilder(context),

            );
            return route;
          }
        }
        return null;
      },
    );
  }
}

class MyHomePage extends StatelessWidget {


  var widgets = ["Text" , "Image","ListView" , "GridView" ,"Stack","Expand","CardDemo","WrapDemo"
  ,"BottomNavigation" , "RouteDemo" , "TabBar" , "TabBar2" ,];

  var colors = [Colors.cyan,Colors.black12];





  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
      drawer: Container(

        color: Colors.white,

        child: Column(

          children: <Widget>[

            DrawerHeader(
                child : Text('text')
            ),

            Text(
              "hellop --------------  "
            ),


            Text(
                "hellop --------------  "
            ),

          ],
        ),
      ),
      endDrawer: Text("world"),
      drawerDragStartBehavior: DragStartBehavior.start,
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
       floatingActionButton: FloatingActionButton(
         //命名路由
         child: Text("btn"),
         onPressed: () => {
           Navigator.pushNamed(context, "/home",arguments: {
             "id" : "11sasdfasdfasdfadfafdafasdfadfafdasdfafa",
           })
         },
       ),
       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
        case "BottomNavigation" :
        page = BottomNavigation("BottomNavigation");
        break;
        case "RouteDemo" :
          toRouteDemo(context);
        break;
        case "TabBar" :
          page = TopNavigatorDemo();
        break;
        case "TabBar2" :
          page = TopNavigatorDemo2();
        break;
      default:
        break;
    }
    if (null != page) {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => page));
    } else {

//      Fluttertoast.showToast(msg: "未知页面");

    }

  }

  void toRouteDemo(BuildContext context) async {

    final result = await Navigator.push(context,MaterialPageRoute(builder:(context) => RouteDemo() ));

    Fluttertoast.showToast(msg: result);

  }

}

