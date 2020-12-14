import 'package:flutter/material.dart';
import 'package:training_log/domain/workout/workout.dart';

class WorkoutShortViewWidget extends StatelessWidget {
  final Workout workout;

  WorkoutShortViewWidget(this.workout);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white12)),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Title: ${workout.title.getOrCrash()}',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 2),
                child: Text(
                  'Exercise: ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              for (var exercise in workout.exercieList)
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 4, bottom: 2),
                  child: Text(
                    '${exercise.exerciseName.getOrCrash()}',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
