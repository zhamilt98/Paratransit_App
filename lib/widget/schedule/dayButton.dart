import 'package:flutter/material.dart';
import 'package:flutterapp/pages/dashboard.dart';
import 'package:flutterapp/pages/day.dart';

class DayButton extends StatefulWidget {
  int day;
  DayButton(int d) {
    day = d;
  }
  _DayButtonState createState() => _DayButtonState(day);
}

class _DayButtonState extends State<DayButton> {
  int day;
  _DayButtonState(int d) {
    day = d;
  }
  Widget build(BuildContext context) {
    switch (day) {
      case 1:
        {
          return Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Container(
              alignment: Alignment.bottomRight,
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                color: Color.fromRGBO(0, 0, 0, 100.0),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DayPage(day)));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Monday',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        break;
      case 2:
        {
          return Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Container(
              alignment: Alignment.bottomRight,
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                color: Color.fromRGBO(0, 0, 0, 100.0),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DayPage(day)));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Tuesday',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        break;
      case 2:
        {
          return Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Container(
              alignment: Alignment.bottomRight,
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                color: Color.fromRGBO(0, 0, 0, 100.0),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DayPage(day)));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Tuesday',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        break;
      case 3:
        {
          return Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Container(
              alignment: Alignment.bottomRight,
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                color: Color.fromRGBO(0, 0, 0, 100.0),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DayPage(day)));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Wednesday',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        break;
      case 4:
        {
          return Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Container(
              alignment: Alignment.bottomRight,
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                color: Color.fromRGBO(0, 0, 0, 100.0),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DayPage(day)));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Thursday',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        break;

      case 5:
        {
          return Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Container(
              alignment: Alignment.bottomRight,
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                color: Color.fromRGBO(0, 0, 0, 100.0),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DayPage(day)));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Friday',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        break;

      case 6:
        {
          return Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Container(
              alignment: Alignment.bottomRight,
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                color: Color.fromRGBO(0, 0, 0, 100.0),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DayPage(day)));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Saturday',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        break;
      case 7:
        {
          return Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Container(
              alignment: Alignment.bottomRight,
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                color: Color.fromRGBO(0, 0, 0, 100.0),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DayPage(day)));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Sunday',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        break;
    }
  }
}
