import 'package:flutter/material.dart';

class TimeInput extends StatefulWidget {
  @override
  _TimeInputState createState() => _TimeInputState();
}

class _TimeInputState extends State<TimeInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width - 100,
        child: TextField(
          style: TextStyle(
            color: Colors.black54,
          ),
          obscureText: true,
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 5.0),
            ),
            labelText: 'Time',
            labelStyle: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
