import 'package:flutter/material.dart';

import '../BaseWidget.dart';

class ImageDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ImageDemoState();
  }
}

class ImageDemoState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ImageContentView(context);
  }
  
}

class ImageContentView extends BaseStateLessWidget {

  BuildContext _context;

  ImageContentView(BuildContext context){
    _context= context;
  }


  @override
  Widget createBody() {
    // TODO: implement createBody
    return  Column(
        children: <Widget>[
          Text(
            "加载网络图"
          ),
          //image from network
          Container(
            child: Image.network(
              "https://www.baidu.com/img/bd_logo1.png",
              height: 200,
              width: MediaQuery.of(_context).size.width,
              fit: BoxFit.contain,
            ),
            color: Colors.yellow,
          ),
          Text(
              "加载本地资源图"
          ),
          //image from asseets
          Container(
            child: Image.asset("assets/fluttter_all.png"),
          ),

          Text(
              "圆形图片 1 "
          ),

          ClipOval(
            child: Image.asset(
              "assets/fluttter_all.png" ,
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),

          ),

          Text(
              "圆角图片 1 "
          ),

          ClipRect(
            child: Image.asset(
              "assets/fluttter_all.png" ,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          )
        ],
      );
  }

  @override
  String getTitle() {
    return "image demo";
  }
  
}