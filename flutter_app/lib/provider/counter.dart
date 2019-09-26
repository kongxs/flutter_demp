
import 'package:flutter/material.dart';

class Count with ChangeNotifier {//1
  int _count;
  Count(this._count);

  void add() {
    _count++;
    notifyListeners();//2
  }
  get count => _count;//3
}