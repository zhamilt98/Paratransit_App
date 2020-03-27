import 'package:flutter/material.dart';

class hamburger extends StatefulWidget {
  @override
  _hamburgerState createState() => _hamburgerState();
}

class _hamburgerState extends State<hamburger> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      icon: Icon(Icons.menu),
      iconSize: 48,
      elevation: 29,
      style: TextStyle(color: Colors.black54),
      onChanged: (String newValue) {},
      items: <String>['Dashboard', 'Book a Ride', 'Settings', 'Logout']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
