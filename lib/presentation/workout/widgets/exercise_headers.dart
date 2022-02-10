import 'package:flutter/material.dart';

class ExerciseHeaders extends StatelessWidget {
  final double width;

  const ExerciseHeaders({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          width: width,
          child: Text("Reps"),
        ),
        Container(
          alignment: Alignment.center,
          width: width,
          child: Text("Result"),
        ),
      ],
    );
  }
}
