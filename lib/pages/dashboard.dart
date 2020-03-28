import 'package:flutter/material.dart';
import 'package:flutterapp/widget/hamburger.dart';
import 'package:flutterapp/widget/schedule.dart';
import 'package:flutterapp/widget/textLogin.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

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
                    RowSpacer(),
                    TextLogin(),
                    hamburger(),
                  ],
                  innerDistance: -10,
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
