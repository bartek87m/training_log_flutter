import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/domain/series/series.dart';
import 'package:training_log/presentation/training/widgets/sereiesHeadWidget.dart';
import 'package:training_log/presentation/training/widgets/seriesWidget.dart';

class ExerciseWidget extends HookWidget {
  final exerciseNumber;
  final context;
  final state;
  final Function rebuildWidget;
  ExerciseWidget(
      this.exerciseNumber, this.context, this.state, this.rebuildWidget,
      {Key key})
      : super(key: key);

  @override
  Widget build(context) {
    var setList = useState();

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
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) =>
                    FocusScope.of(context).requestFocus(focus),
              ),
              state.workout.exercieList[exerciseNumber].setsList.length > 0
                  ? Container(
                      margin: EdgeInsets.only(top: 10),
                      child: SeriesHeadWidget(),
                    )
                  : Container(),
              Container(
                child: Column(
                  children: state.workout.exercieList[exerciseNumber].setsList
                              .length >
                          0
                      ? <Widget>[
                          for (var numberOfSerie = 0;
                              numberOfSerie <
                                  state.workout.exercieList[exerciseNumber]
                                      .setsList.length;
                              numberOfSerie++)
                            Container(
                              child: SeriesWidget(
                                numberOfSerie,
                                exerciseNumber,
                                state,
                                context,
                                rebuildExerciseWidget,
                                focus,
                                key: UniqueKey(),
                              ),
                            )
                        ]
                      : <Widget>[Container()],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
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
            ],
          ),
        ),
      ),
    );
  }
}
