import 'package:flutter/material.dart';
import 'package:my_app/screens/auth/register.dart';
import 'package:my_app/screens/auth/sign_in.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Register(),
    );
  }
}
