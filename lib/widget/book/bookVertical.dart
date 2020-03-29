import 'package:flutter/material.dart';

class BookVerticalText extends StatefulWidget {
  @override
  _BookVerticalTextState createState() => _BookVerticalTextState();
}

class _BookVerticalTextState extends State<BookVerticalText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10),
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            'Book a Ride',
            style: TextStyle(
              color: Colors.black,
              fontSize: 38,
            ),
          )),
    );
  }
}
