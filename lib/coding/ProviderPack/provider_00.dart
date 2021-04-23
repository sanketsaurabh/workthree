import 'package:flutter/material.dart';
class Datas extends StatelessWidget {
  final String data="Simple data";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level1(data),
    );
  }
}
class Level1 extends StatelessWidget {
  final String data;
  Level1(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level2(data),
    );
  }
}
class Level2 extends StatelessWidget {
  final String data;
  Level2(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level3(data),
    );
  }
}
class Level3 extends StatelessWidget {
  final String data;
  Level3(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text(data)),
    );
  }
}