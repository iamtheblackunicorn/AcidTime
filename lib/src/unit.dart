/*
Acid Time by Alexander Abraham, "The Black Unicorn".
Licensed under the MIT License.
*/

import 'vars.dart';
import 'package:flutter/material.dart';

class NumberColumn extends StatelessWidget{
  final double width;
  final double height;
  final String content;
  final double waveHeight;
  final Color contentColor;
  final Color backgroundColor;
  final double numberFontSize;
  NumberColumn({
    @required this.width,
    @required this.height,
    @required this.content,
    @required this.waveHeight,
    @required this.contentColor,
    @required this.backgroundColor,
    @required this.numberFontSize
  });
  @override
  Widget build(BuildContext context){
    return Container(
      color: backgroundColor,
      width: width,
      height: height,
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            new SizedBox(
              height: waveHeight
            ),
            new Text(
              content,
              style: new TextStyle(
                color: contentColor,
                fontSize: numberFontSize,
                fontFamily: 'LSD'
              )
            ),
          ]
        )
      )
    );
  }
}
