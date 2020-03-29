import 'package:flutter/material.dart';
import 'package:flutterapp/widget/signIn/signInButton.dart';
import 'package:flutterapp/widget/signIn/first.dart';
import 'package:flutterapp/widget/signIn/signInEmail.dart';
import 'package:flutterapp/widget/signIn/signInPassword.dart';
import 'package:flutterapp/widget/general/topText.dart';
import 'package:flutterapp/widget/signIn/signInVerticalText.dart';

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
