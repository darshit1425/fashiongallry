
import 'package:flutter/material.dart';

import 'New page.dart';



void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => Page1(),
    },
  ));
}