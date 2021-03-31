import 'package:flutter/material.dart';
import 'package:workthree/Mytasks/task_01.dart';
import 'package:workthree/Mytasks/task_02.dart';
import 'package:workthree/Mytasks/task_03.dart';
import 'package:workthree/coding/animation_gest.dart';
import 'package:workthree/coding/body_layout.dart';
import 'package:workthree/coding/state_imp.dart';
import 'package:workthree/coding/tab_panels.dart';
import 'package:workthree/coding/textfield_learn.dart';
import 'package:workthree/coding/top_appbar.dart';
import 'package:workthree/jsonwork/jsonwork0.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  
  int _currentIndex = 0;
  
  final List<Widget> _children = [
    top_appbar(),
    ConnectivityDemo(),
    // Stful(),
    Animgest(),
     Tab_panels(),
    
    // Container(
    //   margin: EdgeInsets.all(2),
    //   padding: EdgeInsets.all(2),
    //   alignment: Alignment.center,
    //   color: Colors.amberAccent,
    //   child: ElevatedButton(
    //     onPressed: (){
         
    //     },
    //     child: Text('Alert'),

    //   ),
    // ),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: onTabTapped,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.video_call_sharp),
                label: 'Live',
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.book),
                label: 'LMS',
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.person_outlined),
                label: 'Social',
              ),
            ]),
      ),
    );
  }
  //  void alerting(BuildContext context){

  //  var alert= AlertDialog(
  //           title: Text('Welcome'),
  //           content: Text('An ed-tech startup'),
  //         );
  //         showDialog(
  //           context: context, 
  //           builder: (BuildContext context) =>alert
  //           );
  //       }
  
  
}
