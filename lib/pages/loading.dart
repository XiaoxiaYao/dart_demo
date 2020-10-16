import 'package:flutter/material.dart';
import 'package:my_app/services/worldTime.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  void setupWorldTime() async {
    WorldTime worldTime = WorldTime(
        location: "Berlin", flag: 'germany.png', url: "Europe/Berlin");
    await worldTime.getTime();
    print(worldTime.time);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Loading"),
    );
  }
}
