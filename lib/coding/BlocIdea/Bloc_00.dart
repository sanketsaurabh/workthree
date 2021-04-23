import 'package:flutter/material.dart';
import 'dart:async';

class ContactUI extends StatelessWidget {
  
  final ContactBloc manager = ContactBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Chip(
            label: StreamBuilder(
                stream: manager.contactCounter,
                builder: (context, snapshot) {
                  return Text((snapshot.data ?? 0).toString());
                }),
            backgroundColor: Colors.red,
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
          )
        ],
      ),
      body: SafeArea(
        child: StreamBuilder<List<String>>(
            stream: manager.contactListNow,
            builder: (context, snapshot) {
              List<String> contacts = snapshot.data;
              return ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(contacts[index]),
                  );
                },
                separatorBuilder: (context, index) => Divider(),
                itemCount: contacts.length,
              );
            }),
      ),
    );
  }
}

List<String> contacts = ['User 1', 'Users 2', 'Users 3', 'Users 4'];

class ContactBloc {
  final StreamController<int> _contactCounter = StreamController<int>();

  Stream<List<String>> get contactListNow async* {
    for (var i = 0; i < contacts.length; i++) {
      await Future.delayed(Duration(seconds: 2));
      yield contacts.sublist(0, i + 1);
    }
  }

  Stream<int> get contactCounter => _contactCounter.stream;

  ContactBloc() {
    contactListNow.listen((list) => _contactCounter.add(list.length));
 
}
}