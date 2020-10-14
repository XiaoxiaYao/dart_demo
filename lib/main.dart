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
      body: Center(child: Image.asset("images/Snip20201014_1.png")),
      floatingActionButton: FloatingActionButton(
        child: Text("Click me "),
        onPressed: () {
          print("Hi");
        },
      ),
    );
  }
}
