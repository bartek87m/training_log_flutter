import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/domain/exercise/exercise.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:training_log/presentation/training/widgets/exerciseWidget.dart';

class ActiveTrainingPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final list = useState();
    List<FocusNode> _exerciseNameFocusNode = List<FocusNode>();

    void rebuildWidget(state) {
      list.value = List<Exercise>.empty();
      list.value = state.workout.exercieList;
    }

    useEffect(() {
      print(_exerciseNameFocusNode);
      return () {
        _exerciseNameFocusNode.clear();
      };
    });

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

      if (state.workout.exercieList.length > 0)
        _exerciseNameFocusNode[state.workout.exercieList.length - 1]
            .requestFocus();

      return Scaffold(
        resizeToAvoidBottomPadding: true,
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(
                  top: 10, left: 10, right: 10, bottom: 1),
              child: TextFormField(
                onChanged: (value) => context
                    .read<WorkoutBloc>()
                    .add(WorkoutEvent.changeTitle(value)),
                initialValue:
                    state.workout.title.value.fold((l) => null, (r) => r),
                decoration: InputDecoration(
                  counter: Offstage(),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.only(bottom: 0),
                ),
                maxLines: 1,
                maxLength: 50,
                maxLengthEnforced: true,
              ),
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
