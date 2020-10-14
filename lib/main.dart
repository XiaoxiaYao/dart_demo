import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Test()));
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I am the app bar?why"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
          child: FlatButton.icon(
        onPressed: () {},
        icon: Icon(Icons.mail),
        label: Text("I am a label"),
        color: Colors.lightBlue,
      )),
      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
        onPressed: () {
          print("Hi");
        },
      ),
    );
  }
}
