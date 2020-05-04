import 'package:flutter/material.dart';
import 'package:flutterapp/pages/dashboard.dart';
import 'package:flutterapp/widget/signIn/signInEmail.dart';
import 'package:flutterapp/widget/signIn/signInPassword.dart';
import 'dart:io';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

class ButtonLogin extends StatefulWidget {
  @override
  _ButtonLoginState createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
  @override
  Future<String> get localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<String> readCounter() async {
    try {
      final file = await localFile;

      // Read the file.
      String contents = await file.readAsString();

      return contents;
    } catch (e) {
      // If encountering an error, return 0.
      return "0";
    }
  }

  Future<File> get localFile async {
    final path = await localPath;
    print('$path/login.xml');
    return File('$path/login.xml');
  }

  Future<File> writeCounter() async {
    final file = await localFile;
    xml = "<email>" +
        email.myController.text +
        "</email>\n" +
        "<password>" +
        pass.myController.text +
        "</password>";

    // Write the file.
    return file.writeAsString(xml);
  }

  final email = InputEmail();
  final pass = PasswordInput();
  String xml;
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
            writeCounter();
            print(readCounter().asStream().first);
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
