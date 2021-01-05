import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/domain/exercise/exercise.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:training_log/presentation/training/widgets/exerciseWidget.dart';
import 'package:training_log/presentation/training/widgets/workoutTitleWidget.dart';

class ActiveTrainingPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final list = useState();

    List<FocusNode> _focusNodes = [];

    int calculateNumberOfNeededFocusNodes(exerciseList) {
      int numberOfTextFormFieldsNeedsFocusNode = 0;
      if (exerciseList.value != null) {
        exerciseList.value.forEach(
          (exercise) => {
            numberOfTextFormFieldsNeedsFocusNode++,
            exercise.setsList
                .forEach((sets) => {numberOfTextFormFieldsNeedsFocusNode += 2})
          },
        );
        return numberOfTextFormFieldsNeedsFocusNode +
            1; // + 1 because I add workoutTitle TextFormField
      } else
        return 1;
    }

    useEffect(() {
      //dodanie FocusNodes w zależności od ilości TextFormFields
      for (var i = 0; i < calculateNumberOfNeededFocusNodes(list); i++) {
        _focusNodes.add(FocusNode());
      }
      print(_focusNodes);
      return () {
        _focusNodes.forEach((fn) => fn.dispose());
      };
    });

    void rebuildWidget(state) {
      list.value = List<Exercise>.empty();
      list.value = state.workout.exercieList;
    }

    return BlocConsumer<WorkoutBloc, WorkoutState>(
        listener: (BuildContext context, state) {
      if (state.isCanceled == true) {
        ExtendedNavigator.of(context).replace(Routes.trainingsPage);
      }
      if (state.isSaved == true) {
        print('isSaving');
        FlushbarHelper.createSuccess(
          message: "Workout saved",
          duration: Duration(seconds: 2),
        ).show(context);
      }
    }, builder: (context, state) {
      print(state);
      return Scaffold(
        resizeToAvoidBottomPadding: true,
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(
                  top: 10, left: 10, right: 10, bottom: 1),
              child: WorkoutTitleWidget(state),
            ),
            Container(
              child: Column(
                children: list.value != null
                    ? <Widget>[
                        for (var exerciseNumber = 0;
                            exerciseNumber < list.value.length;
                            exerciseNumber++)
                          Container(
                            child: ExerciseWidget(
                              exerciseNumber,
                              state,
                              rebuildWidget,
                              key: UniqueKey(),
                            ),
                          )
                      ]
                    : <Widget>[Container()],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                  onPressed: () => context
                      .read<WorkoutBloc>()
                      .add(WorkoutEvent.saveWorkout()),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: const Text(
                    'Save Workout',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                FlatButton(
                  onPressed: () => {
                    context
                        .read<WorkoutBloc>()
                        .add(WorkoutEvent.addExerciseToWorkout()),
                    rebuildWidget(state),
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: const Text('Add Exercise'),
                ),
                FlatButton(
                  onPressed: () => context
                      .read<WorkoutBloc>()
                      .add(WorkoutEvent.cancelWorkout()),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: const Text(
                    'Cancel Workout',
                    style: TextStyle(color: Colors.redAccent),
                  ),
                ),
              ],
            ),
          ],
        )),
      );
    });
  }
}
