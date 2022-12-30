import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add),
        title: Text("Routes"),
        centerTitle: true,
      ),
      body: Container(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'second');
            },
            child: Text('Press Me')),
      ),
      bottomNavigationBar: GNav(
        hoverColor: Colors.red,
        color: Colors.red,
        tabs: [
          GButton(
            icon: Icons.add,
            onPressed: () {
              Navigator.pushNamed(context, 'second');
            },
          ),
          GButton(
            icon: Icons.local_activity,
          ),
          GButton(
            icon: Icons.wallet,
          )
        ],
      ),
    );
  }
}
