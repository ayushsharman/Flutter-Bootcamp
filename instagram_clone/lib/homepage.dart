import 'package:flutter/material.dart';

class HomeInsta extends StatelessWidget {
  const HomeInsta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        leading: Icon(Icons.camera_front),
        title: Text("Instagram"),
        trailing: Icon(Icons.send),
      ),
    );
  }
}
