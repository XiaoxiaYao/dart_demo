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
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 100),
          child: Text("Label")),
      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
        onPressed: () {
          print("Hi");
        },
      ),
    );
  }
}
