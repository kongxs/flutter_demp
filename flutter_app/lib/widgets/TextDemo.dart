import 'package:flutter/material.dart';

import '../BaseWidget.dart';

import 'package:fluttertoast/fluttertoast.dart';



class TextDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextState();
  }

}

class TextState extends State<TextDemo> {

  bool checked = false;

   int sex = 1;

   var tile_val;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Text(
              "this is text ",
              style: TextStyle(
                  backgroundColor: Colors.blue
              ),
            ),
            alignment: Alignment.topLeft,
          ),

          //超出一屏的 text
          Text(
            "this is text demothis is text demothis is text demodemothis is text demodemothis is text demo",
            overflow: TextOverflow.ellipsis,
          ),

          TextField(
            onChanged: (value) => {
              Fluttertoast.showToast(msg: value),
            },
            decoration: InputDecoration(
                hintText: "tap to input "
            ),
            obscureText: true,
          ),


          Checkbox(
            value: this.checked,
            onChanged: (value) => {
//            Fluttertoast.showToast(msg: "value is $value "),
              setState(() {
                this.checked = !this.checked;
              }),
            },
          ),



          Row(
            children: <Widget>[

              Text("男"),
              Radio(

                  value: 1,
                  onChanged: (val) => {
                  setState(() {

                    this.sex = val;
                  }),},
                  groupValue: this.sex,
                  ),


              Text("女"),
              Radio(
                value: 2,
                onChanged: (val) => {
                  setState(() {
                    this.sex = val;
                  }),},
                groupValue: this.sex,
              ),


            ],
          ),


        RadioListTile(
          value: 1,
          groupValue: 2,
          onChanged: (val) => {

          },
        ),

          SwitchListTile(
            selected: tile_val,
            title: Text("hello"),
              value: tile_val,
              onChanged: (val) => {
                setState(() {

                  tile_val = val;
                })
              },
          )



        ],
      ),
    );
  }
}

class TextContentView extends BaseStateLessWidget {

  State _state;

  TextContentView(this._state);

  bool checked = false;

  @override
  Widget createBody() {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            "this is text ",
            style: TextStyle(
                backgroundColor: Colors.blue
            ),
          ),
          alignment: Alignment.topLeft,
        ),

        //超出一屏的 text
        Text(
            "this is text demothis is text demothis is text demodemothis is text demodemothis is text demo",
            overflow: TextOverflow.ellipsis,
        ),

        TextField(
          onChanged: (value) => {
            Fluttertoast.showToast(msg: value),
          },
          decoration: InputDecoration(
            hintText: "tap to input "
          ),
          obscureText: true,
        ),


        Checkbox(
          value: this.checked,
          onChanged: (value) => {
//            Fluttertoast.showToast(msg: "value is $value "),
              _state.setState(() {
                this.checked = !this.checked;
           }),
          },
        ),


      ],
    );
  }

  @override
  String getTitle() {
    return "text demo";
  }

}