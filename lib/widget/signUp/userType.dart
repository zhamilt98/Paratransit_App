import 'package:flutter/material.dart';
import 'package:flutterapp/pages/book.dart';

class UserType extends StatefulWidget {
  @override
  _UserTypeState createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {
  String dropdownValue = 'Student';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 20, right: 50, left: 50),
        child: Container(
            child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
              border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 5.0),
          )),
          isExpanded: true,
          value: dropdownValue,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 18,
          style: TextStyle(color: Colors.black54, fontSize: 16),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['Student', 'Employee', 'Other']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        )));
  }
}
