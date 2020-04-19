import 'package:flutter/material.dart';

class ScheduleTime extends StatefulWidget {
  @override
  _ScheduleTimeState createState() => _ScheduleTimeState();
}

class _ScheduleTimeState extends State<ScheduleTime> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50, bottom: 20),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width - 100,
        child: TextField(
          style: TextStyle(
            color: Colors.black54,
          ),
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
