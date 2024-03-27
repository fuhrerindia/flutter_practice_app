// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uiapp/screens/excercise_tile.dart';
import 'package:uiapp/widgets/faces.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_add), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_outlined), label: "")
        ],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(children: [
            Padding(
              padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi Paurush",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "23 Jan 2024",
                            style: TextStyle(color: Colors.blue[100]),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.blue[500],
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
          
                  // BODY BELOW
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "Search",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        EmojiFace(
                          emoji: "🥺",
                          label: "Cutie",
                        ),
                        EmojiFace(
                          emoji: "🍉",
                          label: "Fruit",
                        ),
                        EmojiFace(
                          emoji: "👲",
                          label: "Fighter",
                        ),
                        EmojiFace(
                          emoji: "🤔",
                          label: "Thinking",
                        ),
                      ],
                    ),
                  ),
          
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Excercises",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                      ),
                      ExcerciseTile(
                        icon: Icons.favorite,
                        title: "Speaking Skills",
                        numExcercises: 15,
                        iconColor: Colors.green[300]!,
                      ),
                      ExcerciseTile(
                        icon: Icons.location_city,
                        title: "Location",
                        numExcercises: 10,
                        iconColor: Colors.red[300]!,
                      ),
                      ExcerciseTile(
                        icon: Icons.access_time_filled_outlined,
                        title: "People",
                        numExcercises: 20,
                        iconColor: Colors.purple[300]!,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}