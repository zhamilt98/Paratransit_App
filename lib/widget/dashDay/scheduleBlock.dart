import 'package:flutter/material.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

class ScheduleBlock extends StatefulWidget {
  String time;
  String pickLocation;
  String car;
  String dropLocation;
  ScheduleBlock(String t, String p, String c, String d) {
    time = t;
    pickLocation = p;
    car = c;
    dropLocation = d;
  }
  _ScheduleBlockState createState() =>
      _ScheduleBlockState(time, pickLocation, car, dropLocation);
}

class _ScheduleBlockState extends State<ScheduleBlock> {
  String time;
  String pickLocation;
  String car;
  String dropLocation;
  _ScheduleBlockState(String t, String p, String c, String d) {
    time = t;
    pickLocation = p;
    car = c;
    dropLocation = d;
  }
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
          width: 2.0,
          color: Colors.black54,
        )),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          children: <Widget>[
            Column(
              children: <Widget>[
                RowSuper(
                  children: <Widget>[
                    Text('Time: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        )),
                    Text(time,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        )),
                    RowSpacer(),
                    Text('Pick Up: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        )),
                    Text(pickLocation,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ))
                  ],
                ),
                RowSuper(
                  children: <Widget>[Text('')],
                ),
                RowSuper(
                  children: <Widget>[
                    Text('Car: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        )),
                    Text(car,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        )),
                    RowSpacer(),
                    Text('Drop Off: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        )),
                    Text(dropLocation,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
