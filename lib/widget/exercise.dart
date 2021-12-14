// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExerciseWidget extends StatefulWidget {
  const ExerciseWidget({Key? key}) : super(key: key);

  @override
  _ExerciseWidgetState createState() => _ExerciseWidgetState();
}

class _ExerciseWidgetState extends State<ExerciseWidget> {
  bool Onclike = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: Onclike
                  ? ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green))
                  : ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey)),
              onPressed: () {
                setState(() {
                  Onclike = !Onclike;
                });
              },
              child: Text(Onclike ? "Thanks!" : "like me!"),
            )
          ],
        ),
      ),
    );
  }
}
