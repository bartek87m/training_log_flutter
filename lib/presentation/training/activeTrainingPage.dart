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
    FocusNode _workoutTitleFocusNode = FocusNode();
    List<FocusNode> _exerciseNameFocusNode = List<FocusNode>();

    void rebuildWidget(state) {
      list.value = List<Exercise>.empty();
      list.value = state.workout.exercieList;
      _workoutTitleFocusNode.unfocus();
    }

    // useEffect(() {
    //   return () {
    //     if (_exerciseNameFocusNode.length > 0)
    //       for (var i = 0; i > _exerciseNameFocusNode.length - 1; i++) {
    //         _exerciseNameFocusNode[i].dispose();
    //       }
    //     // _workoutTitleFocusNode.dispose();
    //     _exerciseNameFocusNode.clear();
    //   };
    // });

    return BlocConsumer<WorkoutBloc, WorkoutState>(
        listener: (BuildContext context, state) {
      if (state.isCanceled == true && state.isSaved == false) {
        ExtendedNavigator.of(context).replace(Routes.trainingsPage);
      }
      if (state.isSaved == true && state.isEditing == false) {
        FlushbarHelper.createSuccess(
          message: "Workout saved",
        ).show(context).then((value) => {
              ExtendedNavigator.of(context).replace(Routes.trainingsPage),
            });
      }
    }, builder: (context, state) {
      for (var i = 0; i < state.workout.exercieList.length; i++) {
        _exerciseNameFocusNode.add(FocusNode());
      }

      if (state.workout.exercieList.length > 0) {
        _exerciseNameFocusNode[state.workout.exercieList.length - 1]
            .requestFocus();
      }

      if (state.isWotkoutTitleEditing) {
        _workoutTitleFocusNode.requestFocus();
      }

      return Scaffold(
        resizeToAvoidBottomPadding: true,
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(
                  top: 10, left: 10, right: 10, bottom: 1),
              child: WorkoutTitleWidget(state, _workoutTitleFocusNode),
            ),
            Container(
              child: Column(
                children: state.workout.exercieList.isNotEmpty
                    ? <Widget>[
                        for (var exerciseNumber = 0;
                            exerciseNumber < list.value.length;
                            exerciseNumber++)
                          Container(
                            child: ExerciseWidget(
                              exerciseNumber,
                              state,
                              rebuildWidget,
                              _exerciseNameFocusNode[exerciseNumber],
                              _workoutTitleFocusNode,
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
                  onPressed: () => BlocProvider.of<WorkoutBloc>(context)
                      .add(WorkoutEvent.finishWorkout()),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: const Text(
                    'Finish Workout',
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
