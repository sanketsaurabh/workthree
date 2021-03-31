import 'package:flutter/material.dart';

class Animgest extends StatefulWidget {
  @override
  _AnimgestState createState() => _AnimgestState();
}

class _AnimgestState extends State<Animgest> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  int numTap = 0;
  int numLongPress = 0;
  int numDoubleTap = 0;
  double posX = 0.0;
  double posY = 0.0;
  double boxSize = 0.0;
  final double fullBoxSize = 150.0;
  @override
  void initState(){
    super.initState();
    controller =AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this
      );
      animation =CurvedAnimation(
        parent: controller, 
        curve: Curves.easeInOut,
        );
        animation.addListener(() {
          setState(() {
            boxSize = fullBoxSize * animation.value;
          });
          center(context);
         });
         controller.forward();
  }
  Widget build(BuildContext context) {
    if(posX ==0.0){
      center(context);
    }
    
    return Scaffold(
      body: GestureDetector(
        onDoubleTap:(){
          setState((){
            numDoubleTap++;
          });
        },
        onLongPress:(){
          setState((){
            numLongPress++;
          });
        },
        onTap:(){
          setState((){
            numTap++;
          });
        },
        onVerticalDragUpdate: (DragUpdateDetails value){
          setState(() {
            double delta = value.delta.dy;
            posY +=delta;
          });
        },
        onHorizontalDragUpdate: (DragUpdateDetails value){
          setState(() {
            double delta = value.delta.dx;
            posX +=delta;
          });
        },

        child :Stack(
        children: [
          Positioned(
              left: posX,
              top: posY,
              child: Container(
                width: boxSize,
                height: boxSize,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ),
         
        ],
      ),),
      appBar: AppBar(
        actions: [],
        title: Text('Gesture Detection'),
      ),
      bottomNavigationBar: Material(
        child: Text(
            'Taps:$numTap - Double taps : $numDoubleTap - Long press: $numLongPress'),
      ),
    );
  }
@override
dispose(){
  controller.dispose();
  super.dispose();
}
  void center(BuildContext context) {
    posX = (MediaQuery.of(context).size.width / 2) - boxSize / 2;
    posY = (MediaQuery.of(context).size.height / 2) - boxSize / 2 - 30.0;
    setState(() {
      posX = posX;
      posY = posY;
    });
  }
}
