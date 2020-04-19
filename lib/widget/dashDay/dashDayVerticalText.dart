import 'package:flutter/material.dart';

class DashDayVerticalText extends StatefulWidget {
  @override
  int day;
  DashDayVerticalText(int d) {
    day = d;
  }
  _DashDayVerticalTextState createState() => _DashDayVerticalTextState(day);
}

class _DashDayVerticalTextState extends State<DashDayVerticalText> {
  @override
  int day;
  _DashDayVerticalTextState(int d) {
    day = d;
  }

  Widget build(BuildContext context) {
    String dayText;
    switch (day) {
      case 1:
        {
          dayText = "Monday";
        }
        break;
      case 2:
        {
          dayText = "Tuesday";
        }
        break;
      case 3:
        {
          dayText = "Wednesday";
        }
        break;
      case 4:
        {
          dayText = "Thusday";
        }
        break;
      case 5:
        {
          dayText = "Friday";
        }
        break;
      case 6:
        {
          dayText = "Saturday";
        }
        break;
      case 7:
        {
          dayText = "Sunday";
        }
        break;
    }

    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10),
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            dayText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 38,
            ),
          )),
    );
  }
}
