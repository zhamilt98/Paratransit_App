import 'package:flutter/material.dart';
import 'package:flutterapp/widget/general/hamburger.dart';
import 'package:flutterapp/widget/general/topText.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutterapp/widget/day/dayVerticalText.dart';

class DayPage extends StatefulWidget {
  @override
  int day;
  DayPage(int d) {
    day = d;
  }
  _DayPageState createState() => _DayPageState(day);
}

class _DayPageState extends State<DayPage> {
  @override
  int day;
  _DayPageState(int d) {
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
            ColumnSuper(children: <Widget>[
              RowSuper(
                children: <Widget>[
                  DayVerticalText(day),
                  TextLogin(),
                  hamburger(),
                ],
                innerDistance: -12,
                alignment: Alignment.topRight,
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
