import 'package:flutter/material.dart';

class AcademicSemester extends StatefulWidget {
  @override
  _AcademicSemesterState createState() => _AcademicSemesterState();
}

class _AcademicSemesterState extends State<AcademicSemester> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          style: TextStyle(
            color: Colors.black54,
          ),
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 5.0),
            ),
            fillColor: Colors.black54,
            labelText: 'Academic Semester',
            labelStyle: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
