import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app/provider/counter.dart';
import 'package:provider/provider.dart';



class Store {
  static BuildContext context;
  static BuildContext widgetCtx;

  static init({context, child}) {
    return MultiProvider(
      providers: [
//        Provider<Count>.value(value: Count(1)),
        ChangeNotifierProvider(builder: (_) => Count(1)),
      ],
      child: child,
    );
  }

  static T value<T>(context) {
    return Provider.of(context);
  }

  static Consumer connect<T>({builder, child}) {
    return Consumer<T>(builder: builder, child: child);
  }
}