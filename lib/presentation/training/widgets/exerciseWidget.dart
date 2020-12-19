import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/domain/series/series.dart';

class ExerciseWidget extends HookWidget {
  final exerciseNumber;
  final state;
  final Function rebuildWidget;
  ExerciseWidget(this.exerciseNumber, this.state, this.rebuildWidget, {Key key})
      : super(key: key);

  @override
  Widget build(context) {
    var setList = useState();
    final mediaQuery = MediaQuery.of(context).size;
    final textFieldHeight = (mediaQuery.height * 0.04);
    final textFieldWidth = (mediaQuery.width * 0.2);

    void rebuildExerciseWidget(state) {
      setList.value = [];
      setList.value = state.workout.exercieList[exerciseNumber].setsList;
    }

    final focus = FocusNode();

    return Form(
      child: Dismissible(
        key: Key(exerciseNumber.toString()),
        onDismissed: (_) => {
          context
              .read<WorkoutBloc>()
              .add(WorkoutEvent.removeExerciseFromWorkout(exerciseNumber)),
          this.rebuildWidget(state),
        },
        background: Container(
          color: Colors.green,
          child: Icon(Icons.cancel, size: 32),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
          child: Column(
            children: [
              TextFormField(
                initialValue: state
                    .workout.exercieList[exerciseNumber].exerciseName.value
                    .fold((f) => null, (r) => r),
                onChanged: (value) => context.read<WorkoutBloc>().add(
                    WorkoutEvent.addExerciseName(value.trim(), exerciseNumber)),
                style: TextStyle(fontSize: 14),
                minLines: 1,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'Exercise Name',
                  contentPadding: EdgeInsets.only(bottom: 5),
                  isDense: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                onFieldSubmitted: (_) =>
                    FocusScope.of(context).requestFocus(focus),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: <Widget>[
                        for (var i = 0;
                            i <
                                state.workout.exercieList[exerciseNumber]
                                    .setsList.length;
                            i++)
                          Container(
                              margin: const EdgeInsets.only(top: 10),
                              padding: const EdgeInsets.only(top: 15),
                              height: textFieldHeight,
                              child: Text('${i + 1}')),
                      ],
                    ),
                    Column(
                      children: state.workout.exercieList[exerciseNumber]
                                  .setsList.length >
                              0
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
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                      ),
                                    ),
                                    textInputAction: TextInputAction.next,
                                    initialValue: state
                                        .workout
                                        .exercieList[exerciseNumber]
                                        .setsList[seriesNumber]
                                        .reps,
                                    onChanged: (value) =>
                                        context.read<WorkoutBloc>().add(
                                              WorkoutEvent.addRepsToSeries(
                                                  exerciseNumber,
                                                  seriesNumber,
                                                  value.trim()),
                                            ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                            ]
                          : <Widget>[Container()],
                    ),
                    Column(
                      children: state.workout.exercieList[exerciseNumber]
                                  .setsList.length >
                              0
                          ? <Widget>[
                              Text("Series"),
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
                                      counterStyle:
                                          TextStyle(color: Colors.red),
                                      fillColor: Colors.grey[600],
                                      filled: true,
                                      contentPadding: const EdgeInsets.all(3),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                      ),
                                    ),
                                    initialValue: state
                                        .workout
                                        .exercieList[exerciseNumber]
                                        .setsList[seriesNumber]
                                        .weight,
                                    onChanged: (value) =>
                                        context.read<WorkoutBloc>().add(
                                              WorkoutEvent.addWeightToSeries(
                                                  exerciseNumber,
                                                  seriesNumber,
                                                  value.trim()),
                                            ),
                                  ),
                                ),
                            ]
                          : <Widget>[Container()],
                    ),
                    Column(
                      children: state.workout.exercieList[exerciseNumber]
                                  .setsList.length >
                              0
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
                                        context.read<WorkoutBloc>().add(
                                            WorkoutEvent
                                                .removeSeriesFromExercise(
                                                    exerciseNumber,
                                                    seriesNumber));
                                        rebuildExerciseWidget(state);
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
              ),
              Container(
                child: FlatButton(
                  onPressed: () {
                    context
                        .read<WorkoutBloc>()
                        .add(WorkoutEvent.addSeriesToExercise(exerciseNumber));
                    setList.value = List<Series>.empty();
                    setList.value =
                        state.workout.exercieList[exerciseNumber].setsList;
                  },
                  child: Text("Add Set"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
