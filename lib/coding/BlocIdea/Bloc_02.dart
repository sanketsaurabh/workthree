import 'package:flutter/material.dart';
import 'dart:async';
class BasicUI extends StatelessWidget {
  BlocSyntax blocData =BlocSyntax();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder(
          stream: blocData.outputStream,
          builder: (context,snapshot){

          })
      
    )
    );
  }
}


class BlocSyntax{
//This is first thing we need to controller the stream
StreamController<String> _streamController = StreamController<String>();

Sink<String> get inputSink => _streamController.sink;

Stream<String> get outputStream => _streamController.stream;

BlocSyntax(){
  _streamController.stream.listen((event) { });
  // we can now perform action when we get the data 
  // and add it to outputStream -- outputStream.add();
  // also we can add errors with outputStream-- outputStream.addError();
}
void dispose(){
  _streamController.close();
}
}