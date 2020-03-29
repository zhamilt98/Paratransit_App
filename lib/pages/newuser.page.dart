import 'package:flutter/material.dart';
import 'package:flutterapp/widget/signUp/signUpButton.dart';
import 'package:flutterapp/widget/signUp/signUpEmail.dart';
import 'package:flutterapp/widget/signUp/signUpName.dart';
import 'package:flutterapp/widget/signIn/signInPassword.dart';
import 'package:flutterapp/widget/signUp/signUpVerticalText.dart';
import 'package:flutterapp/widget/general/topText.dart';
import 'package:flutterapp/widget/signUp/userOld.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
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
                Row(
                  children: <Widget>[
                    signup(),
                    TextLogin(),
                  ],
                ),
                NewNome(),
                NewEmail(),
                PasswordInput(),
                ButtonNewUser(),
                UserOld(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
