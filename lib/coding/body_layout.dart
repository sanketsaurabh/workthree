import 'package:flutter/material.dart';
import 'package:workthree/coding/bottom_navi.dart';

class Body_Layout extends StatefulWidget {
  
  @override
  _Body_LayoutState createState() => _Body_LayoutState();
}

class _Body_LayoutState extends State<Body_Layout> {
  
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        
        body: Container(
          margin: EdgeInsets.only(
            top: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Column(
                children: [
                  Text(
                    'Row-Column-Image-Text-Elevated Button',
                  ),
                  Image.asset(
                    'images/a.png',
                    height: 300,
                    width: 300,
                  ),
                  Text('Text Widget'),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: Text('Elevated Button'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/screen2');
                    // Navigator.push(context,
                    //  MaterialPageRoute(builder: (context)=>MyHome()));
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}
