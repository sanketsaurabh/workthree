import 'package:flutter/material.dart';
class Datas extends StatelessWidget {
  final String data="Simple data";
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level1(),
    );
  }
}

class Level1 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level2(),
    );
  }
}

class Level2 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level3(),
    );
  }
}

class Level3 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text('data')),
    );
  }
}