import "package:flutter/material.dart";
import 'package:my_app/models/user.dart';
import 'package:my_app/screens/auth/auth.dart';
import 'package:my_app/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user == null) {
      return Auth();
    } else {
      return Home();
    }
  }
}
