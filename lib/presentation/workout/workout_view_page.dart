import 'package:flutter/material.dart';

class WorkoutViewPage extends StatelessWidget {
  const WorkoutViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Workout view')),
      body: Container(
        child: Text('Workout view'),
      ),
    );
  }
}
