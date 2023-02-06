import 'package:entry/entry.dart';
import 'package:flutter/material.dart';

class WidgetHelper{

  static Widget entryAnimation({child,delayed}){
    return Entry(
        yOffset: 50,
        opacity: 0,
        curve: Curves.fastOutSlowIn,
        duration: Duration(milliseconds: 1000),
        delay: Duration(milliseconds: delayed??0),
        child: child
    );
  }
}