import 'package:flutter/material.dart';
import 'package:my_app/models/brew.dart';
import 'package:my_app/screens/home/brew_item.dart';
import 'package:provider/provider.dart';

class BrewList extends StatefulWidget {
  @override
  _BrewListState createState() => _BrewListState();
}

class _BrewListState extends State<BrewList> {
  @override
  Widget build(BuildContext context) {
    final brews = Provider.of<List<Brew>>(context) ?? [];
    brews.forEach((brew) {
      print(brew.name);
    });
    return ListView.builder(
        itemCount: brews.length,
        itemBuilder: (context, index) {
          return BrewItem(brew: brews[index]);
        });
  }
}
