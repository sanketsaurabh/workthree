import 'package:flutter/material.dart';

class top_appbar extends StatefulWidget {
  @override
  _top_appbarState createState() => _top_appbarState();
}

class _top_appbarState extends State<top_appbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Workone"),
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 60.2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
          elevation: 0.00,
          backgroundColor: Colors.greenAccent[400],
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 50.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          tooltip: 'Increment Counter',
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}