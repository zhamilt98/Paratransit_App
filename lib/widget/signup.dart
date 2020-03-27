import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 10),
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            'Sign up',
            style: TextStyle(
              color: Colors.black,
              fontSize: 38,

            ),
          )),
    );
  }
}
