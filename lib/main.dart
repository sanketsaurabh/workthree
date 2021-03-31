import 'package:flutter/material.dart';
import 'package:workthree/coding/animation_gest.dart';
import 'package:workthree/coding/bottom_navi.dart';
import 'package:workthree/coding/database_operation.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //as i know we have to mention in material app widget
      routes: <String, WidgetBuilder> {
    '/screen1': (BuildContext context) => new Animgest(),
    '/screen2':(BuildContext context) => new MyHomePage(),
    
  },
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

