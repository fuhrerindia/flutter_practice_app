// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExcerciseTile extends StatelessWidget {
  final String title;
  final int numExcercises;
  final Color iconColor;
  final IconData icon;

  const ExcerciseTile(
      {super.key,
      required this.title,
      required this.numExcercises,
      required this.icon,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: ListTile(
          trailing: Icon(Icons.more_horiz),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "$numExcercises Excercises",
            style: TextStyle(fontSize: 11),
          ),
          leading: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: iconColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
