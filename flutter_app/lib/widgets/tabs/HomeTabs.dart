import 'package:flutter/material.dart';



class HomeTabs extends StatefulWidget {

  final arguments;

  HomeTabs({this.arguments});


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomTabsState();
  }
}

class HomTabsState extends State<HomeTabs> {

  @override
  Widget build(BuildContext context) {

    var argu = widget.arguments;

    var va = "";

    if (argu != null) {
      va = argu["id"];
    }

    return Text("home  = $va "  );
  }

}






