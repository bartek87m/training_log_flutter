import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/presentation/training/widgets/seriesWidget.dart';

class ExerciseWidget extends HookWidget {
  final exerciseNumber;
  final state;
  final Function rebuildWidget;
  final FocusNode focusNode;
  final FocusNode _workoutTitleFocusNode;

  ExerciseWidget(this.exerciseNumber, this.state, this.rebuildWidget,
      this.focusNode, this._workoutTitleFocusNode,
      {Key key})
      : super(key: key);

  @override
  Widget build(context) {
    var setList = useState();

    List<FocusNode> _repsFocusNode = List<FocusNode>();

    void rebuildExerciseWidget(state) {
      setList.value = [];
      setList.value = state.workout.exercieList[exerciseNumber].setsList;
      _workoutTitleFocusNode.unfocus();
    }

    // useEffect(() {
    //   return () {
    //     if (_repsFocusNode.length > 0)
    //       for (var i = 0; i > _repsFocusNode.length - 1; i++) {
    //         _repsFocusNode[i].dispose();
    //       }
    //     _repsFocusNode.clear();
    //   };
    // });

    for (var i = 0;
        i < state.workout.exercieList[exerciseNumber].setsList.length;
        i++) {
      _repsFocusNode.add(FocusNode());
    }

    if (state.workout.exercieList[exerciseNumber].setsList.length > 0 &&
        state.isWotkoutTitleEditing == false)
      _repsFocusNode[
              state.workout.exercieList[exerciseNumber].setsList.length - 1]
          .requestFocus();

    if (state.isWotkoutTitleEditing == true) {
      _workoutTitleFocusNode.requestFocus();
    }

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
                focusNode: focusNode,
                autovalidateMode:
                    state.showErrorMessagesForExerciseName[exerciseNumber]
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                initialValue: state
                    .workout.exercieList[exerciseNumber].exerciseName.value
                    .fold((f) => null, (r) => r),
                onChanged: (value) => {
                  context.read<WorkoutBloc>().add(WorkoutEvent.addExerciseName(
                      value.trim(), exerciseNumber)),
                },
                style: TextStyle(fontSize: 14),
                validator: (_) => state
                    .workout.exercieList[exerciseNumber].exerciseName.value
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
                state: state,
                rebuildWidget: rebuildExerciseWidget,
                focusNode: _repsFocusNode,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: FlatButton(
                      onPressed: () {
                        context.read<WorkoutBloc>().add(
                            WorkoutEvent.addSeriesToExercise(exerciseNumber));
                        this.rebuildWidget(state);
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
