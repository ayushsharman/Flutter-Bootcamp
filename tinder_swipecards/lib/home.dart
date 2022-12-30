// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tinder_swipecards/tinder_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _TinderCardsState();
}

class _TinderCardsState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tinder Cards"),
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 200,
          child: Stack(
            children: [
              TinderCard(color: Colors.red),
              TinderCard(color: Colors.yellow),
              TinderCard(color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
