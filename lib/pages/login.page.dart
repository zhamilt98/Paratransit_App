import 'package:flutter/material.dart';
import 'package:flutterapp/widget/button.dart';
import 'package:flutterapp/widget/first.dart';
import 'package:flutterapp/widget/forgot.dart';
import 'package:flutterapp/widget/inputEmail.dart';
import 'package:flutterapp/widget/password.dart';
import 'package:flutterapp/widget/textLogin.dart';
import 'package:flutterapp/widget/verticalText.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                Row(children: <Widget>[
                  VerticalText(),
                  TextLogin(),
                ]),
                InputEmail(),
                PasswordInput(),
                ButtonLogin(),
                FirstTime(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


