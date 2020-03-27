import 'package:flutter/material.dart';
import 'package:flutterapp/widget/buttonNewUser.dart';
import 'package:flutterapp/widget/newEmail.dart';
import 'package:flutterapp/widget/newName.dart';
import 'package:flutterapp/widget/password.dart';
import 'package:flutterapp/widget/signup.dart';
import 'package:flutterapp/widget/textNew.dart';
import 'package:flutterapp/widget/userOld.dart';

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
                    TextNew(),
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
