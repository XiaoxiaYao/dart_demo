import 'package:flutter/material.dart';
import 'package:my_app/models/brew.dart';
import 'package:my_app/services/auth.dart';
import 'package:my_app/services/database.dart';
import 'package:provider/provider.dart';

import 'brew_list.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Brew>>.value(
      value: DatabaseService().brews,
      child: Scaffold(
          backgroundColor: Colors.brown[50],
          appBar: AppBar(
            title: Text("Brew Crew"),
            backgroundColor: Colors.brown[400],
            elevation: 0,
            actions: [
              FlatButton.icon(
                  onPressed: () async {
                    await _auth.signOut();
                  },
                  icon: Icon(Icons.person),
                  label: Text("Log out"))
            ],
          ),
          body: BrewList()),
    );
  }
}
