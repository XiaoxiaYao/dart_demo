import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Loading"),
    );
  }

  void getTime() async {
    Response response =
        await get("https://worldtimeapi.org/api/timezone/Europe/London");
    Map data = jsonDecode(response.body);
    String datetime = data["datetime"];
    String offset = data["utc_offset"].substring(1, 3);

    DateTime now =
        DateTime.parse(datetime).add(Duration(hours: int.parse(offset)));
    print(now);
  }
}
