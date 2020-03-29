import 'package:flutter/material.dart';

class ScheduleVerticalText extends StatefulWidget {
  @override
  _ScheduleVerticalTextState createState() => _ScheduleVerticalTextState();
}

class _ScheduleVerticalTextState extends State<ScheduleVerticalText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10),
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            'Schedule',
            style: TextStyle(
              color: Colors.black,
              fontSize: 38,
            ),
          )),
    );
  }
}
