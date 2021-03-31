import 'dart:async';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Taskone extends StatefulWidget {
  @override
  _TaskoneState createState() => _TaskoneState();
}

class _TaskoneState extends State<Taskone> {

  String _connectionStatus = 'Unknown';
  final Connectivity _connectivity = Connectivity();
   StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    initConnectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initConnectivity() async {
    ConnectivityResult result = ConnectivityResult.none;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print(e.toString());
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: Center(
          child: OutlinedButton(
            child:Text('Connection Status: $_connectionStatus'),
            onPressed:(){ _showMaterialDialog();}
        ),
      ),
    ));
  }
   Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    switch (result) {
      case ConnectivityResult.wifi:
      case ConnectivityResult.mobile:
      case ConnectivityResult.none:
        setState(() => _connectionStatus = result.toString());
        break;
      default:
        setState(() => _connectionStatus = 'Failed to get connectivity.');
        break;
    }
  }
  _showMaterialDialog() {
    // showDialog(
    //     context: context,
    //     builder: (_) => new AlertDialog(
    //           title: new Text("Material Dialog"),
    //           content: new Text("Hey! I'm Coflutter!"),
    //           actions: <Widget>[
    //             TextButton(
    //               child: Text('Close me!'),
    //               onPressed: () {
    //                 Navigator.of(context).pop();
    //               },
    //             )
    //           ],
    //         ));
    
  }
  
}