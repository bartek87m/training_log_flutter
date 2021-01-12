import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';

class SeriesWidget extends StatelessWidget {
  final exerciseNumber;

  SeriesWidget({this.exerciseNumber});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final textFieldHeight = (mediaQuery.height * 0.035);
    final textFieldWidth = (mediaQuery.width * 0.25);

    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: <Widget>[
              for (var i = 0;
                  i <
                      context
                          .watch<WorkoutBloc>()
                          .state
                          .workout
                          .exercieList[exerciseNumber]
                          .setsList
                          .length;
                  i++)
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.only(top: 15),
                  height: textFieldHeight * 1.2,
                  child: Text(
                    '${i + 1}',
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
            ],
          ),
          Column(
            children: context
                        .watch<WorkoutBloc>()
                        .state
                        .workout
                        .exercieList[exerciseNumber]
                        .setsList
                        .length >
                    0
                ? <Widget>[
                    Text("Reps"),
                    for (var seriesNumber = 0;
                        seriesNumber <
                            context
                                .watch<WorkoutBloc>()
                                .state
                                .workout
                                .exercieList[exerciseNumber]
                                .setsList
                                .length;
                        seriesNumber++)
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: textFieldWidth,
                        height: textFieldHeight * 1.2,
                        child: TextFormField(
                          key: UniqueKey(),
                          maxLength: 8,
                          cursorColor: Colors.grey,
                          cursorHeight: textFieldHeight * 0.7,
                          decoration: InputDecoration(
                            counter: Offstage(
                              offstage: true,
                            ),
                            fillColor: Colors.grey[600],
                            filled: true,
                            // contentPadding: const EdgeInsets.only(top: 3),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                          ),
                          style: const TextStyle(fontSize: 14),
                          textInputAction: TextInputAction.next,
                          initialValue: context
                              .watch<WorkoutBloc>()
                              .state
                              .workout
                              .exercieList[exerciseNumber]
                              .setsList[seriesNumber]
                              .reps,
                          onChanged: (value) {
                            BlocProvider.of<WorkoutBloc>(context).add(
                              WorkoutEvent.addRepsToSeries(
                                  exerciseNumber, seriesNumber, value.trim()),
                            );
                            context
                                .read<WorkoutBloc>()
                                .add(WorkoutEvent.updateWorkout());
                          },
                          textAlign: TextAlign.center,
                        ),
                      ),
                  ]
                : <Widget>[Container()],
          ),
          Column(
            children: context
                        .watch<WorkoutBloc>()
                        .state
                        .workout
                        .exercieList[exerciseNumber]
                        .setsList
                        .length >
                    0
                ? <Widget>[
                    Text("Result"),
                    for (var seriesNumber = 0;
                        seriesNumber <
                            context
                                .watch<WorkoutBloc>()
                                .state
                                .workout
                                .exercieList[exerciseNumber]
                                .setsList
                                .length;
                        seriesNumber++)
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: textFieldWidth,
                        height: textFieldHeight * 1.2,
                        child: TextFormField(
                          key: UniqueKey(),
                          maxLength: 9,
                          cursorHeight: textFieldHeight * 0.7,
                          textAlign: TextAlign.center,
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            counter: Offstage(
                              offstage: true,
                            ),
                            counterStyle: TextStyle(color: Colors.red),
                            fillColor: Colors.grey[600],
                            filled: true,
                            // contentPadding: const EdgeInsets.all(3),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                          ),
                          style: const TextStyle(fontSize: 14),
                          initialValue: context
                              .watch<WorkoutBloc>()
                              .state
                              .workout
                              .exercieList[exerciseNumber]
                              .setsList[seriesNumber]
                              .result,
                          onChanged: (value) {
                            BlocProvider.of<WorkoutBloc>(context).add(
                              WorkoutEvent.addWeightToSeries(
                                  exerciseNumber, seriesNumber, value.trim()),
                            );
                            context
                                .read<WorkoutBloc>()
                                .add(WorkoutEvent.updateWorkout());
                          },
                        ),
                      ),
                  ]
                : <Widget>[Container()],
          ),
          Column(
            children: context
                        .watch<WorkoutBloc>()
                        .state
                        .workout
                        .exercieList[exerciseNumber]
                        .setsList
                        .length >
                    0
                ? <Widget>[
                    for (var seriesNumber = 0;
                        seriesNumber <
                            context
                                .watch<WorkoutBloc>()
                                .state
                                .workout
                                .exercieList[exerciseNumber]
                                .setsList
                                .length;
                        seriesNumber++)
                      Container(
                        padding: const EdgeInsets.only(top: 8),
                        height: textFieldHeight * 1.2,
                        margin: const EdgeInsets.only(top: 10),
                        child: GestureDetector(
                            onTap: () {
                              BlocProvider.of<WorkoutBloc>(context).add(
                                  WorkoutEvent.removeSeriesFromExercise(
                                      exerciseNumber, seriesNumber));
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
