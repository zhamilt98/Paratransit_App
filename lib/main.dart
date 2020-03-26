import 'package:flutter/material.dart';
import 'package:flutterapp/pages/login.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.black,
        cursorColor: Color.fromRGBO(30, 60,60, 100.0)
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
