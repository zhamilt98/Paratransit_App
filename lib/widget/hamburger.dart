import 'package:flutter/material.dart';
import 'package:flutterapp/pages/book.dart';

class hamburger extends StatefulWidget {
  @override
  _hamburgerState createState() => _hamburgerState();
}

class _hamburgerState extends State<hamburger> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 10, right: 10),
        child: DropdownButton<String>(
          icon: Icon(Icons.menu),
          iconSize: 48,
          elevation: 100,
          style: TextStyle(color: Colors.black54),
          onChanged: (String newValue) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BookPage()));
          },
          items: <String>['Dashboard', 'Schedule', 'Ride', 'Settings', 'Logout']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ));
  }
}
