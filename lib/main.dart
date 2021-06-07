/*
Acid Time by Alexander Abraham, "The Black Unicorn".
Licensed under the MIT License.
*/

import 'src/vars.dart';
import 'src/acid.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      title: appTitle,
      home: AcidTime(),
      debugShowCheckedModeBanner: false,
    )
  );
}
