import 'package:flutter/material.dart';
import 'package:workthree/jsonwork/jsonwork0.dart';
class Tab_panels extends StatefulWidget {
  @override
  _Tab_panelsState createState() => _Tab_panelsState();
}

class _Tab_panelsState extends State<Tab_panels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tabbar'),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: 'One', icon: Icon(Icons.favorite)),
                Tab(text: 'Two', icon: Icon(Icons.music_note)),
                Tab(text: 'Three', icon: Icon(Icons.search)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('One')),
                
                Center(child: Text('Two')),
                Center(child: Text('Three')),
            ],
          ),
        ),
      ),
    );
  }
}