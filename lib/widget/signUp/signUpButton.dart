import 'package:flutter/material.dart';
import 'package:flutterapp/pages/dashboard.dart';

class ButtonNewUser extends StatefulWidget {
  @override
  _ButtonNewUserState createState() => _ButtonNewUserState();
}

class _ButtonNewUserState extends State<ButtonNewUser> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 50, left: 200),
      child: Container(
        alignment: Alignment.bottomRight,
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          color: Color.fromRGBO(0, 0, 0, 100.0),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DashboardPage()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'OK',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 14,
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
}
