import 'package:flutter/material.dart';
import 'package:flutterapp/widget/general/hamburger.dart';
import 'package:flutterapp/widget/dashboard/schedule.dart';
import 'package:flutterapp/widget/general/topText.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutterapp/widget/dashboard/dashboardVertical.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
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
            Column(
              children: <Widget>[
                RowSuper(
                  children: <Widget>[
                    DashboardVerticalText(),
                    TextLogin(),
                    hamburger(),
                  ],
                  innerDistance: -15,
                  alignment: Alignment.topRight,
                ),
                schedule(),
                schedule()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
