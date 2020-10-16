import 'package:flutter/material.dart';
import 'package:my_app/services/worldTime.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = "loading";

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  void setupWorldTime() async {
    WorldTime worldTime = WorldTime(
        location: "Berlin", flag: 'germany.png', url: "Europe/Berlin");
    await worldTime.getTime();
    setState(() {
      time = worldTime.time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(time),
      ),
    );
  }
}
