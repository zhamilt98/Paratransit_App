import 'package:flutter/material.dart';
import 'package:flutterapp/pages/book.dart';

class BookAMPM extends StatefulWidget {
  @override
  _BookAMPMState createState() => _BookAMPMState();
}

class _BookAMPMState extends State<BookAMPM> {
  String dropdownValue = 'AM';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 20, right: 50),
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 18,
          style: TextStyle(color: Colors.black54),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['AM', 'PM']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ));
  }
}
