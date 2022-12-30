// ignore_for_file: prefer_const_constructors

import 'package:day02_flutter/buffer.dart';
import 'package:day02_flutter/flutter.dart';
import 'package:day02_flutter/medoc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        "home": (context) => HomePage(),
        "second": (context) => SecondScreen(),
        "buffer": (context) => MyBuffer(),
      },
    );
  }
}
