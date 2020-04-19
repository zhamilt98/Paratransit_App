import 'package:flutter/material.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutterapp/widget/general/hamburger.dart';
import 'package:flutterapp/widget/general/topText.dart';
import 'package:flutterapp/widget/day/dayVerticalText.dart';
import 'package:flutterapp/widget/day/scheduleAMPM.dart';
import 'package:flutterapp/widget/day/scheduleDropOff.dart';
import 'package:flutterapp/widget/day/schedulePickUp.dart';
import 'package:flutterapp/widget/day/scheduleTime.dart';

class DayPage extends StatefulWidget {
  @override
  int day;
  DayPage(int d) {
    day = d;
  }
  _DayPageState createState() => _DayPageState(day);
}

class _DayPageState extends State<DayPage> {
  int day;
  _DayPageState(int d) {
    day = d;
  }

  List<DynamicWidget> listDynamic = [];
  List<String> data = [];

  Icon floatingIcon = new Icon(Icons.add);

  addDynamic() {
    if (data.length != 0) {
      floatingIcon = new Icon(Icons.add);

      data = [];
      listDynamic = [];
      print('if');
    }
    setState(() {});
    listDynamic.add(new DynamicWidget());
  }

  submitData() {
    floatingIcon = new Icon(Icons.arrow_back);
    data = [];
    listDynamic.forEach((widget) => data.add(widget.controller.text));
    setState(() {});
    print(data.length);
  }

  @override
  Widget build(BuildContext context) {
    Widget result = new Flexible(
        flex: 1,
        child: new Card(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (_, index) {
              return new Padding(
                padding: new EdgeInsets.all(10.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      margin: new EdgeInsets.only(left: 10.0),
                      child: new Text("${index + 1} : ${data[index]}"),
                    ),
                    new Divider()
                  ],
                ),
              );
            },
          ),
        ));

    Widget dynamicTextField = new Flexible(
      flex: 2,
      child: new ListView.builder(
        itemCount: listDynamic.length,
        itemBuilder: (_, index) => listDynamic[index],
      ),
    );

    Widget submitButton = new Container(
      child: new RaisedButton(
        color: Color.fromRGBO(0, 0, 0, 100.0),
        onPressed: submitData,
        child: new Padding(
          padding: new EdgeInsets.all(16.0),
          child: new Text(
            'Submit',
            style: TextStyle(color: Colors.green, fontSize: 18),
          ),
        ),
      ),
    );
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: new Scaffold(
          body: new Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.greenAccent, Colors.green]),
            ),
            child: new Column(
              children: <Widget>[
                RowSuper(
                  children: <Widget>[
                    DayVerticalText(day),
                    TextLogin(),
                    hamburger(),
                  ],
                  innerDistance: -12,
                  alignment: Alignment.topRight,
                ),
                data.length == 0 ? dynamicTextField : result,
                data.length == 0 ? submitButton : new Container(),
              ],
            ),
          ),
          floatingActionButton: new FloatingActionButton(
            backgroundColor: Color.fromRGBO(0, 0, 0, 100.0),
            foregroundColor: Colors.green,
            onPressed: addDynamic,
            child: floatingIcon,
          ),
        ));
  }
}

class DynamicWidget extends StatefulWidget {
  @override
  _DynamicWidgetState createState() => _DynamicWidgetState();
  TextEditingController controller = new TextEditingController();
}

class _DynamicWidgetState extends State<DynamicWidget> {
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      margin: new EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          border: Border.all(
        width: 2.0,
        color: Colors.black54,
      )),
      child: Column(children: <Widget>[
        SchedulePickUp(),
        ScheduleDropOff(),
        RowSuper(
          children: <Widget>[
            ScheduleTime(),
            RowSpacer(),
            ScheduleAMPM(),
          ],
          innerDistance: -100,
        ),
      ]),
    ));
  }
}
