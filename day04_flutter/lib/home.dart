// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Day 04"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavigationRail(
              indicatorColor: Colors.red,
              useIndicator: true,
              selectedIndex: _selectedIndex,
              onDestinationSelected: (value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
              minWidth: 100,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.add),
                  label: Text("Add Icon"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.portable_wifi_off_outlined),
                  label: Text("Add Icon"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.add),
                  label: Text("Add Icon"),
                ),
              ],
            ),
            Text("Hello"),
          ],
        ));
  }
}
