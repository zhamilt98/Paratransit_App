import 'package:flutter/material.dart';
import 'package:flutterapp/pages/dashboard.dart';
import 'package:flutterapp/pages/dashDay.dart';

class DashDayButton extends StatefulWidget {
  int Day;
  DashDayButton(int d) {
    Day = d;
  }
  _DashDayButtonState createState() => _DashDayButtonState(Day);
}

class _DashDayButtonState extends State<DashDayButton> {
  int Day;
  _DashDayButtonState(int d) {
    Day = d;
  }
  Widget build(BuildContext context) {
    switch (Day) {
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
                      MaterialPageRoute(builder: (context) => DashDayPage(1)));
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
                      MaterialPageRoute(builder: (context) => DashDayPage(2)));
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
                      MaterialPageRoute(builder: (context) => DashDayPage(3)));
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
                      MaterialPageRoute(builder: (context) => DashDayPage(4)));
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
                      MaterialPageRoute(builder: (context) => DashDayPage(5)));
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
                      MaterialPageRoute(builder: (context) => DashDayPage(6)));
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
                      MaterialPageRoute(builder: (context) => DashDayPage(7)));
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
