import 'package:flutter/material.dart';
import 'package:flutterapp/widget/general/hamburger.dart';
import 'package:flutterapp/widget/general/topText.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutterapp/widget/schedule/dayButton.dart';
import 'package:flutterapp/widget/schedule/scheduleVertical.dart';

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
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
            ColumnSuper(children: <Widget>[
              RowSuper(
                children: <Widget>[
                  ScheduleVerticalText(),
                  TextLogin(),
                  hamburger(),
                ],
                innerDistance: -15,
                alignment: Alignment.topRight,
              ),
              DayButton(1),
              DayButton(2),
              DayButton(3),
              DayButton(4),
              DayButton(5),
              DayButton(6),
              DayButton(7),
            ]),
          ],
        ),
      ),
    );
  }
}
