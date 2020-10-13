import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("I am the app bar?why"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text("Child?"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Click me "),
        onPressed: () {
          print("Hi");
        },
      ),
    ),
  ));
}
