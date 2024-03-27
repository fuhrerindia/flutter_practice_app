import 'package:flutter/material.dart';

class EmojiFace extends StatelessWidget {
  final String emoji;
  final String label;
  const EmojiFace({super.key, required this.emoji, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Text(
            emoji,
            style: TextStyle(fontSize: 20),
          ),
        ),
        SizedBox(height: 5,),
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
