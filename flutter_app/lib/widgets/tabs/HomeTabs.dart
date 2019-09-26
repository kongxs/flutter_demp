import 'package:flutter/material.dart';
import 'package:flutter_app/provider/counter.dart';
import 'package:flutter_app/provider/store.dart';



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

    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            Text("home  = $va "  ),


            Builder(
              builder: (context) {
                return Text(
                    'second page: ${Store.value<Count>(context).count}'
                );
              },
            ),


            RaisedButton(
              child: Text("button"),
              onPressed: () => {
                Store.value<Count>(context).add()
              },
            ),



          ],
        )
      ),
    );
  }

}






