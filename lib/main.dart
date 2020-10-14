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
        child: Text(
          "Child? this is cool. Amazing!",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "IndieFlower"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Click me "),
        onPressed: () {
          print("Hi");
        },
      ),
    );
  }
}
