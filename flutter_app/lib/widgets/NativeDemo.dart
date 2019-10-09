import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';


class NativeAndroid extends StatefulWidget {

  @override
  _NativeAndroidState createState() => _NativeAndroidState();


}


class _NativeAndroidState extends State<NativeAndroid> {


  static const platform = const MethodChannel('wanke.fun/test');


//  static const EventChannel eventChannel = EventChannel('samples.flutter.io/charging');


  static const EventChannel eventChannel = EventChannel("Event_Channel");

  var _val = "wait value";


  var _callback = "wait callback ";


  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    platform.setMethodCallHandler((handler) {
      setState(() {
//        _callback = handler.arguments;
      });
    });

//    eventChannel.receiveBroadcastStream().listen(_onEvent, onError: _onError);

  }

  //接收activity传递来的参数obj
  void _onEnvent(Object obj){
//    Fluttertoast.showToast(msg: "from android");
    setState(() {
      _callback = obj;
    });
  }

  void _onError(Object obj){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("原生通信"),
      ),
      body: Center(
        child: Column(

          children: <Widget>[



            Text(_val ,
            style: TextStyle(
              height: 5,
            ),) ,


            RaisedButton(
              onPressed: _onTopClick,
              child: Text(
                "调用原生接口获取数据并传值",
              ),
            ),


            Text(_callback ,
              style: TextStyle(
                height: 5,
              ),) ,

            RaisedButton(
              child: Text(
                "注册回调让原生有变化时候通知这里",
              ),
              onPressed: ()=>{
                //TODO 注册回调让原生有变化时候通知这里
                eventChannel.receiveBroadcastStream().listen(_onEnvent,onError: _onError)
              },
            ),

            RaisedButton(
              child: Text(
                "停止回调",
              ),
              onPressed: ()=>{
                //TODO
//                _eventChannel.receiveBroadcastStream().
              },
            ),

          ],

        ),
      ),

    );
  }



  Future _onTopClick() async {

    String result = await platform.invokeMethod("getResult");

    setState(() {
      _val = result;
    });
  }


}
