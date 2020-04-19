import 'package:flutter/material.dart';

class DashboardVerticalText extends StatefulWidget {
  @override
  _DashboardVerticalTextState createState() => _DashboardVerticalTextState();
}

class _DashboardVerticalTextState extends State<DashboardVerticalText> {
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
