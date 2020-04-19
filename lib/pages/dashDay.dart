import 'package:flutter/material.dart';
import 'package:flutterapp/widget/general/hamburger.dart';
import 'package:flutterapp/widget/general/topText.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutterapp/widget/dashDay/dashDayVerticalText.dart';
import 'package:flutterapp/widget/dashDay/scheduleBlock.dart';

class DashDayPage extends StatefulWidget {
  @override
  int day;
  DashDayPage(int d) {
    day = d;
  }
  _DashDayPageState createState() => _DashDayPageState(day);
}

class _DashDayPageState extends State<DashDayPage> {
  @override
  int day;
  _DashDayPageState(int d) {
    day = d;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.greenAccent, Colors.green]),
        ),
        child: ListView(
          children: <Widget>[
            Column(children: <Widget>[
              RowSuper(
                children: <Widget>[
                  DashDayVerticalText(day),
                  TextLogin(),
                  hamburger(),
                ],
                innerDistance: -12,
                alignment: Alignment.topRight,
              ),
              ScheduleBlock(
                  "10:00 AM", "Lynch Hall", "Yellow Circle", "Woodward Hall"),
              ScheduleBlock(
                  "12:00 PM", "Woodward Hall", "Red Triangle", "Cato Hall"),
              ScheduleBlock(
                  "2:00 PM", "Cato Hall", "Blue Square", "Student Union"),
              ScheduleBlock(
                  "6:45 PM", "Lynch Hall", "Red Triangle", "Atkins Library"),
              ScheduleBlock(
                  "9:45 PM", "Atkins Library", "Red Triangle", "Lynch Hall"),
            ]),
          ],
        ),
      ),
    );
  }
}
