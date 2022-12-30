// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tinder_swipecards/home.dart';
import 'package:tinder_swipecards/match.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
        'swipe': (context) => SwipeRight(),
      },
    );
  }
}
