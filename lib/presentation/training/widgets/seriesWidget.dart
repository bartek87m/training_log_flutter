import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';

class SeriesWidget extends HookWidget {
  @required
  final seriesNumber;
  final exerciseNumber;
  final state;
  final context;
  final rebuildExerciseWidget;
  final focus;

  SeriesWidget(this.seriesNumber, this.exerciseNumber, this.state, this.context,
      this.rebuildExerciseWidget, this.focus,
      {Key key})
      : super(key: key);

  @override
  Widget build(context) {
    final mediaQuery = MediaQuery.of(context).size;
    final textFieldHeight = (mediaQuery.height * 0.04);
    final textFieldWidth = (mediaQuery.width * 0.2);

    return Container(
      margin: EdgeInsets.only(top: mediaQuery.height * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 15, top: 5),
            child: Text(
              '${this.seriesNumber + 1}',
            ),
          ),
          Column(
            children: [
              this.seriesNumber == 0 ? Text('Reps') : Container(),
              Container(
                width: textFieldWidth,
                height: textFieldHeight,
                child: TextFormField(
                  cursorColor: Colors.grey,
                  cursorHeight: textFieldHeight * 0.7,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[600],
                    filled: true,
                    contentPadding: const EdgeInsets.all(3),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  initialValue: state.workout.exercieList[exerciseNumber]
                      .setsList[seriesNumber].reps,
                  onChanged: (value) => context.read<WorkoutBloc>().add(
                        WorkoutEvent.addRepsToSeries(
                            exerciseNumber, seriesNumber, value.trim()),
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Column(
            children: [
              this.seriesNumber == 0 ? Text('Result') : Container(),
              Container(
                width: textFieldWidth,
                height: textFieldHeight,
                child: TextFormField(
                  cursorHeight: textFieldHeight * 0.7,
                  textAlign: TextAlign.center,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    counterStyle: TextStyle(color: Colors.red),
                    fillColor: Colors.grey[600],
                    filled: true,
                    contentPadding: const EdgeInsets.all(3),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  initialValue: state.workout.exercieList[exerciseNumber]
                      .setsList[seriesNumber].weight,
                  onChanged: (value) => context.read<WorkoutBloc>().add(
                        WorkoutEvent.addWeightToSeries(
                            exerciseNumber, seriesNumber, value.trim()),
                      ),
                ),
              ),
            ],
          ),
          Container(
            child: GestureDetector(
                onTap: () {
                  context.read<WorkoutBloc>().add(
                      WorkoutEvent.removeSeriesFromExercise(
                          exerciseNumber, seriesNumber));
                  this.rebuildExerciseWidget(state);
                },
                child: Icon(Icons.delete)),
          ),
        ],
      ),
    );
  }
}
