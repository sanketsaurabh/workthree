import 'package:flutter/material.dart';

class CounterUI extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body:Center(
        child: Column(children: [
          Text('Pushed this number of times'),
          Text(value),
          Row( )
        ],),
      ),
    );
  }
}