import "package:flutter/material.dart";
import 'package:my_app/services/auth.dart';

class Register extends StatefulWidget {
  final Function toggleView;

  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0,
        title: Text("Register"),
        actions: [
          FlatButton.icon(
              onPressed: () {
                widget.toggleView();
              },
              icon: Icon(Icons.person),
              label: Text("Sign in"))
        ],
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (val) =>
                      val.isEmpty ? "You need to input something" : null,
                  onChanged: (value) => {setState(() => email = value)},
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  validator: (val) =>
                      val.length < 6 ? "At least 6+ chars" : null,
                  onChanged: (value) => {setState(() => password = value)},
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  color: Colors.pink[400],
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      print("$email$password");
                    }
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
