// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      debugShowCheckedModeBanner: false,
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _selectedValue = 0;

  getLabel(value) {
    String mood = "Happy";
    if (value == 0) {
      mood = "Sad";
    } else if (value == 1) {
      mood = "Neutral";
    } else if (value == 2) {
      mood = "Happy";
    } else if (value == 3) {
      mood = "Excited";
    }
    return mood;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text("C  H  A  L  L  E  N  G  E"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "How are you feeling today?",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 2,
                  offset: Offset(1, 1),
                )
              ],
              fontWeight: FontWeight.bold,
            ),
          ),
          Slider(
            max: 3,
            min: 0,
            divisions: 3,
            label: getLabel(_selectedValue),
            value: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value;
              });
            },
          )
        ],
      ),
    );
  }
}
