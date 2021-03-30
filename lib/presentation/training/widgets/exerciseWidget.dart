import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/presentation/training/widgets/seriesWidget.dart';

class ExerciseWidget extends StatelessWidget {
  final exerciseNumber;
  final _formKey = GlobalKey<FormState>();
  ExerciseWidget(this.exerciseNumber, {Key key}) : super(key: key);

  @override
  Widget build(context) {
    return Form(
      child: Dismissible(
        key: _formKey,
        onDismissed: (_) {
          context
              .read<WorkoutBloc>()
              .add(WorkoutEvent.removeExerciseFromWorkout(exerciseNumber));
          if (context
              .read<WorkoutBloc>()
              .state
              .workout
              .exercieList[exerciseNumber]
              .exerciseName
              .isValid()) {
            context.read<WorkoutBloc>().add(WorkoutEvent.updateWorkout());
          }
        },
        background: Container(
          color: Colors.green,
          child: const Icon(Icons.cancel, size: 32),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
          child: Column(
            children: [
              TextFormField(
                autovalidateMode: context
                            .watch<WorkoutBloc>()
                            .state
                            .showErrorMessagesForExerciseName
                            .length >
                        exerciseNumber
                    ? context
                            .watch<WorkoutBloc>()
                            .state
                            .showErrorMessagesForExerciseName[exerciseNumber]
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled
                    : AutovalidateMode.disabled,
                initialValue: context
                    .watch<WorkoutBloc>()
                    .state
                    .workout
                    .exercieList[exerciseNumber]
                    .exerciseName
                    .value
                    .fold((f) => null, (r) => r),
                onChanged: (value) {
                  context.read<WorkoutBloc>().add(WorkoutEvent.addExerciseName(
                      value.trim(), exerciseNumber));
                  context.read<WorkoutBloc>().add(WorkoutEvent.updateWorkout());
                },
                style: TextStyle(fontSize: 14),
                validator: (_) => context
                    .read<WorkoutBloc>()
                    .state
                    .workout
                    .exercieList[exerciseNumber]
                    .exerciseName
                    .value
                    .fold(
                        //beirzemy context bezpośrednio z Bloc a nie z builder
                        (f) => f.maybeMap(
                              workoutStringEmpty: (_) =>
                                  "This field can\'t be empty",
                              orElse: () => null,
                            ),
                        (r) => null),
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
              ),
              SeriesWidget(
                exerciseNumber: exerciseNumber,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: FlatButton(
                      onPressed: () {
                        FocusScopeNode currentFocus = FocusScope.of(context);

                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.focusedChild?.unfocus();
                        }

                        context.read<WorkoutBloc>().add(
                            WorkoutEvent.addSeriesToExercise(exerciseNumber));
                      },
                      child: Text("Add Set"),
                    ),
                  ),
                  // Container(
                  //   child: FlatButton(
                  //     onPressed: () {
                  //       print("Change to WOD");
                  //     },
                  //     child: Text("Change to WOD"),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
