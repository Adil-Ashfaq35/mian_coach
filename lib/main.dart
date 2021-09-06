import 'package:flutter/material.dart';
import 'package:mian_coach/Registration.dart';
import 'package:mian_coach/bus.dart';
import 'package:mian_coach/landing.dart';
import 'package:mian_coach/process.dart';
import 'package:mian_coach/route_selection.dart';
import 'package:mian_coach/signIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes:
      {
        'signin': (context) => signIn(),
        'landing': (context) => landing(),
        'registration': (context) => registration(),
        'route_selection': (context) => route_selection(),
        'process': (context) => process(),
        'bus': (context) => bus(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: landing(),
    );
  }
}
