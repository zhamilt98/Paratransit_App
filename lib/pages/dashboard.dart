import 'package:flutter/material.dart';
import 'package:flutterapp/widget/button.dart';
import 'package:flutterapp/widget/first.dart';
import 'package:flutterapp/widget/forgot.dart';
import 'package:flutterapp/widget/inputEmail.dart';
import 'package:flutterapp/widget/password.dart';
import 'package:flutterapp/widget/textLogin.dart';
import 'package:flutterapp/widget/verticalText.dart';

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

            ),
          ],
        ),
      ),
    );
  }
}


