import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, 'buffer');
          },
          child: Text('We are on Second Screen'),
        ),
      ),
      bottomNavigationBar: GNav(
        color: Colors.red,
        tabs: [
          GButton(
            icon: Icons.add,
            onPressed: () {
              Navigator.pushNamed(context, 'buffer');
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
