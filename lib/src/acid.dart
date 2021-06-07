/*
Acid Time by Alexander Abraham, "The Black Unicorn".
Licensed under the MIT License.
*/

import 'vars.dart';
import 'unit.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class AcidTime extends StatefulWidget{
  AcidTimeState createState(){
    return AcidTimeState();
  }
}
class AcidTimeState extends State<AcidTime>{
  String hours;
  String minutes;
  String seconds;
  var secondUpdate;
  double startingPushDownOne;
  double startingPushDownTwo;
  double startingPushDownThree;
  @override
  void initState(){
    super.initState();
    DateTime now = new DateTime.now();
    DateFormat rawTimeData = new DateFormat(format);
    String time = rawTimeData.format(now);
    hours = time.split('-')[0];
    minutes = time.split('-')[1];
    seconds = time.split('-')[2];
    secondUpdate = Timer.periodic(
      Duration(
        seconds: timeOut
      ), (Timer t) {
      setState(() {
        DateTime now = new DateTime.now();
        DateFormat rawTimeData = new DateFormat(format);
        String time = rawTimeData.format(now);
        hours = time.split('-')[0];
        minutes = time.split('-')[1];
        seconds = time.split('-')[2];
      });
    });
  }
  @override
  Widget build(BuildContext context){
    double columnWidth = MediaQuery.of(context).size.width / sections;
    double stdNumberFontSize = (MediaQuery.of(context).size.width / sections) * fontPercentage;
    double pushDown = MediaQuery.of(context).size.height * pushPercentage;
    return new Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            new NumberColumn(
              content: hours,
              width: columnWidth,
              waveHeight: pushDown,
              contentColor: mainColor,
              backgroundColor: accentColor,
              numberFontSize: stdNumberFontSize,
              height: MediaQuery.of(context).size.height
            ),
            new NumberColumn(
              content: minutes,
              width: columnWidth,
              waveHeight: pushDown,
              contentColor: accentColor,
              backgroundColor: mainColor,
              numberFontSize: stdNumberFontSize,
              height: MediaQuery.of(context).size.height
            ),
            new NumberColumn(
              content: seconds,
              width: columnWidth,
              waveHeight: pushDown,
              contentColor: mainColor,
              numberFontSize: stdNumberFontSize,
              backgroundColor: accentColor,
              height: MediaQuery.of(context).size.height
            )
          ]
        )
      )
    );
  }
}
