import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



class AnimationDemo extends StatefulWidget {
  @override
  _GestureDemoState createState() => _GestureDemoState();
}

class _GestureDemoState extends State<AnimationDemo> with SingleTickerProviderStateMixin{

  AnimationController controller;

  Animation animate;
  Animation colorAnimation;
  Animation radiusAnimation;




  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(
          milliseconds:2000,
      )
    );


    animate = new Tween<double>(begin: 0.0, end: 200.0).animate(controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((AnimationStatus status) {
        //执行完成后反向执行
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          //反向执行完成，正向执行
          controller.forward();
        }
      });

    colorAnimation =  ColorTween(begin: Colors.yellow,end: Colors.red).animate(controller);

    radiusAnimation = BorderRadiusTween(begin: BorderRadius.circular(0),end: BorderRadius.circular(50)).animate(controller);



    controller.forward();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('animation'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

            SizedBox(
              height: 200,
              child:  Container(
            height: animate.value,
            width: animate.value,
                child: FlutterLogo(),
              ),
            ),


            Container(
              color: colorAnimation.value,
              height: 100,
              width: 100,
            ),

        Container(
              decoration: BoxDecoration(
                borderRadius: radiusAnimation.value,
                color: Colors.blue
              ),
              height: 100,
              width: 100,
            ),



          ],

        ),
      )

    );
  }
}


