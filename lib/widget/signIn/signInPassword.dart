import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  @override
  final myController = TextEditingController();
  _PasswordInputState createState() => _PasswordInputState(myController);
}

class _PasswordInputState extends State<PasswordInput> {
  @override
  TextEditingController myController;
  _PasswordInputState(TextEditingController c) {
    myController = c;
  }
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          controller: myController,
          style: TextStyle(
            color: Colors.black54,
          ),
          obscureText: true,
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 5.0),
            ),
            labelText: 'Password',
            labelStyle: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
