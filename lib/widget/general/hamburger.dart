import 'package:flutter/material.dart';
import 'package:flutterapp/pages/book.dart';
import 'package:flutterapp/pages/dashboard.dart';
import 'package:flutterapp/pages/schedule.dart';
import 'package:flutterapp/pages/login.page.dart';

class hamburger extends StatefulWidget {
  @override
  _hamburgerState createState() => _hamburgerState();
}

class _hamburgerState extends State<hamburger> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 10, right: 10),
        child: DropdownButton<String>(
          icon: Icon(Icons.menu),
          iconSize: 48,
          elevation: 100,
          style: TextStyle(color: Colors.black54),
          onChanged: (String newValue) {
            switch (newValue) {
              case "Schedule":
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DashboardPage()));
                }
                break;
              case "Create Schedule":
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SchedulePage()));
                }
                break;
              case "Book a Ride":
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BookPage()));
                }
                break;

              case "Logout":
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                }
                break;
              default:
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                }
                break;
            }
          },
          items: <String>[
            'Schedule',
            'Create Schedule',
            'Book a Ride',
            'Logout'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                //style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            );
          }).toList(),
        ));
  }
}
