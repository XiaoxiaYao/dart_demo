import 'package:flutter/material.dart';
import 'package:my_app/models/brew.dart';

class BrewItem extends StatelessWidget {
  final Brew brew;
  BrewItem({this.brew});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Card(
        margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.brown[brew.strength],
          ),
          title: Text(brew.name),
          subtitle: Text('Take ${brew.sugars} sugar(s)'),
        ),
      ),
    );
  }
}
