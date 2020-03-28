import 'package:flutter/material.dart';
import 'package:flutterapp/widget/book/dropofLocation.dart';
import 'package:flutterapp/widget/hamburger.dart';
import 'package:flutterapp/widget/textLogin.dart';
import 'package:flutterapp/widget/book/pickupLocation.dart';
import 'package:flutterapp/widget/book/time.dart';
import 'package:flutterapp/widget/book/bookSubmit.dart';
import 'package:flutterapp/widget/book/bookAMPM.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.greenAccent, Colors.green]),
        ),
        child: ListView(
          children: <Widget>[
            Column(children: <Widget>[
              RowSuper(
                children: <Widget>[
                  TextLogin(),
                  hamburger(),
                ],
                innerDistance: -10,
                alignment: Alignment.topRight,
              ),
              PickUpInput(),
              DropOffInput(),
              RowSuper(
                children: <Widget>[
                  TimeInput(),
                  RowSpacer(),
                  BookAMPM(),
                ],
                innerDistance: -100,
              ),
              BookSubmit(),
            ]),
          ],
        ),
      ),
    );
  }
}
