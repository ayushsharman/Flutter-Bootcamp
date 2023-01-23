// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 63, 92),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Chat",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.chat_bubble),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Activites",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.fireplace),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Pairs",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.white10,
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.verified_user,
                color: Colors.black,
              ),
              title: Text("Ayush Sharma"),
              subtitle: Text("Hi! Can we meet?"),
              trailing: Icon(Icons.timelapse),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.white10,
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.verified_user,
                color: Colors.black,
              ),
              title: Text("Ayush Sharma"),
              subtitle: Text("Hi! Can we meet?"),
              trailing: Icon(Icons.timelapse),
            ),
          ),
        ],
      ),
    );
  }
}
