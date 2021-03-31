import 'package:flutter/material.dart';

class TextField_learn extends StatefulWidget {
  @override
  _TextField_learnState createState() => _TextField_learnState();
}

class _TextField_learnState extends State<TextField_learn> {
  TextEditingController _textEditing = TextEditingController();
  String name="";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.all(2),
      alignment: Alignment.center,
      color: Colors.red,
      child: Column(
        children: [
          TextField(
            onChanged: (String string){
              setState(() {
                name=string;
              });
            },
          ),
          Text(
        'Welcome ' + name +".",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
        ],
      )
    );
  }
}