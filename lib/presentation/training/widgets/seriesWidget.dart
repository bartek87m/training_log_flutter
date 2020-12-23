import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';

class SeriesWidget extends StatelessWidget {
  final state;
  final exerciseNumber;
  final Function rebuildWidget;

  SeriesWidget({this.state, this.exerciseNumber, this.rebuildWidget});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final textFieldHeight = (mediaQuery.height * 0.04);
    final textFieldWidth = (mediaQuery.width * 0.2);

    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: <Widget>[
              for (var i = 0;
                  i < state.workout.exercieList[exerciseNumber].setsList.length;
                  i++)
                Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(top: 15),
                    height: textFieldHeight,
                    child: Text('${i + 1}')),
            ],
          ),
          Column(
            children:
                state.workout.exercieList[exerciseNumber].setsList.length > 0
                    ? <Widget>[
                        Text("Reps"),
                        for (var seriesNumber = 0;
                            seriesNumber <
                                state.workout.exercieList[exerciseNumber]
                                    .setsList.length;
                            seriesNumber++)
                          Container(
                            margin: const EdgeInsets.only(top: 10),
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
                              textInputAction: TextInputAction.next,
                              // initialValue: state
                              //     .workout
                              //     .exercieList[exerciseNumber]
                              //     .setsList[seriesNumber]
                              //     .reps
                              //     .getOrCrash(),
                              onChanged: (value) =>
                                  BlocProvider.of<WorkoutBloc>(context).add(
                                WorkoutEvent.addRepsToSeries(
                                    exerciseNumber, seriesNumber, value.trim()),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                      ]
                    : <Widget>[Container()],
          ),
          Column(
            children:
                state.workout.exercieList[exerciseNumber].setsList.length > 0
                    ? <Widget>[
                        Text("Result"),
                        for (var seriesNumber = 0;
                            seriesNumber <
                                state.workout.exercieList[exerciseNumber]
                                    .setsList.length;
                            seriesNumber++)
                          Container(
                            margin: const EdgeInsets.only(top: 10),
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
                              // initialValue: state
                              //     .workout
                              //     .exercieList[exerciseNumber]
                              //     .setsList[seriesNumber]
                              //     .result.getOrCrash(),
                              onChanged: (value) =>
                                  BlocProvider.of<WorkoutBloc>(context).add(
                                WorkoutEvent.addWeightToSeries(
                                    exerciseNumber, seriesNumber, value.trim()),
                              ),
                            ),
                          ),
                      ]
                    : <Widget>[Container()],
          ),
          Column(
            children:
                state.workout.exercieList[exerciseNumber].setsList.length > 0
                    ? <Widget>[
                        for (var seriesNumber = 0;
                            seriesNumber <
                                state.workout.exercieList[exerciseNumber]
                                    .setsList.length;
                            seriesNumber++)
                          Container(
                            padding: const EdgeInsets.only(top: 12.5),
                            height: textFieldHeight,
                            margin: const EdgeInsets.only(top: 10),
                            child: GestureDetector(
                                onTap: () {
                                  BlocProvider.of<WorkoutBloc>(context).add(
                                      WorkoutEvent.removeSeriesFromExercise(
                                          exerciseNumber, seriesNumber));
                                  this.rebuildWidget(state);
                                },
                                child: Icon(Icons.delete)),
                          ),
                      ]
                    : <Widget>[
                        Container(),
                      ],
          )
        ],
      ),
    );
  }
}
