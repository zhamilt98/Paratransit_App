import 'package:flutter/material.dart';
import 'package:flutterapp/widget/book/dropofLocation.dart';
import 'package:flutterapp/widget/general/hamburger.dart';
import 'package:flutterapp/widget/general/topText.dart';
import 'package:flutterapp/widget/book/pickupLocation.dart';
import 'package:flutterapp/widget/book/time.dart';
import 'package:flutterapp/widget/book/bookSubmit.dart';
import 'package:flutterapp/widget/book/bookAMPM.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutterapp/widget/book/bookVertical.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
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
                      BookVerticalText(),
                      TextLogin(),
                      hamburger(),
                    ],
                    innerDistance: -15,
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
        ));
  }
}
