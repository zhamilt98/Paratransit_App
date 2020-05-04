import 'package:flutter/material.dart';
import 'package:xml/xml.dart';

class InputEmail extends StatefulWidget {
  @override
  final myController = TextEditingController();
  _InputEmailState createState() => _InputEmailState(myController);
}

class _InputEmailState extends State<InputEmail> {
  @override
  TextEditingController myController;
  _InputEmailState(TextEditingController c) {
    myController = c;
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          controller: myController,
          style: TextStyle(
            color: Colors.black54,
          ),
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 5.0),
            ),
            fillColor: Colors.black,
            labelText: 'Email',
            labelStyle: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
