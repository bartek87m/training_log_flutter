import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/domain/series/set.dart' as series;
import 'package:training_log/presentation/training/widgets/setWidget.dart';

class ExerciseWidget extends HookWidget {
  final numberOfExercise;
  final context;
  final state;
  final Function rebuildWidget;
  ExerciseWidget(
      this.numberOfExercise, this.context, this.state, this.rebuildWidget,
      {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var setList = useState(List<series.Set>.empty());

    return Form(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
        child: Column(
          children: [
            TextFormField(
              initialValue: state
                  .workout.exercieList[numberOfExercise].exerciseName.value
                  .fold((f) => null, (r) => r),
              onChanged: (value) => context.read<WorkoutBloc>().add(
                  WorkoutEvent.addExerciseName(value.trim(), numberOfExercise)),
              style: TextStyle(fontSize: 14),
              // validator: () => state.workout.,
              minLines: 1,
              maxLines: 1,
              decoration: InputDecoration(
                hintText: 'Exercise Name',
                contentPadding: EdgeInsets.only(bottom: 5),
                isDense: true,
                labelStyle: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              child: Column(
                children: setList.value.isNotEmpty
                    ? <Widget>[
                        for (var _ in setList.value)
                          Container(child: SetWidget())
                      ]
                    : <Widget>[Container()],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            setList.value.length > 0 ? Text('Tu dodać nagłówki') : Container(),
            FlatButton(
              onPressed: () {
                context
                    .read<WorkoutBloc>()
                    .add(WorkoutEvent.addSeriesToExercise(numberOfExercise));
                setList.value = List<series.Set>.empty();
                // setList.value = state.workout.exercieList.setList;
                print(state.workout.exercieList.setsLis);
              },
              child: Text("Add Set"),
            ),
            FlatButton(
              onPressed: () {
                context.read<WorkoutBloc>().add(
                    WorkoutEvent.removeExerciseFromWorkout(numberOfExercise));
                this.rebuildWidget(state);
              },
              child: Text("Remove Exercise"),
            )
          ],
        ),
      ),
    );
  }
}
