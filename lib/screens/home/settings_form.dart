import 'package:flutter/material.dart';
import 'package:my_app/shared/constants.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = [
    '0',
    '1',
    '2',
    '3',
    '4',
  ];

  String _currentName;
  String _currentSugars;
  int _currentStrength;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text("Update your brew settings."),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: textInputDecoration,
            validator: (val) => val.isEmpty ? "Please enter a name" : null,
            onChanged: (val) => setState(() => _currentName = val),
          ),
          SizedBox(
            height: 20,
          ),
          DropdownButtonFormField(
            items: sugars.map((sugar) {
              return DropdownMenuItem(
                  child: Text("$sugar sugars"), value: sugar);
            }).toList(),
            onChanged: (String value) {
              setState(() {
                _currentSugars = value;
              });
            },
            value: _currentSugars ?? "0",
            decoration: textInputDecoration,
          ),
          Slider(
            min: 100,
            max: 900,
            divisions: 8,
            onChanged: (val) => setState(() => _currentStrength = val.round()),
            value: (_currentStrength ?? 100).toDouble(),
            activeColor: Colors.brown[_currentStrength ?? 100],
            inactiveColor: Colors.brown[_currentStrength ?? 100],
          ),
          RaisedButton(
            onPressed: () async {
              print("$_currentName $_currentSugars $_currentStrength");
            },
            color: Colors.pink[400],
            child: Text(
              "Update",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
