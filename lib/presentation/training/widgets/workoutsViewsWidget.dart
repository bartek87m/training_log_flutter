import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/workoutWatcher/workoutwatcher_bloc.dart';
import 'package:training_log/presentation/training/widgets/workoutShortViewWidget.dart';

class WorkoutsViewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: BlocBuilder<WorkoutwatcherBloc, WorkoutwatcherState>(
        builder: (context, state) {
          print(state);
          return state.map(
              initial: (_) => Container(),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              loadFailure: (state) => Text('${state.workoutfailure}'),
              loadSuccess: (state) {
                return ListView.builder(
                    itemCount: state.workouts.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () => print(state.workouts[index]),
                          child: WorkoutShortViewWidget(state.workouts[index]));
                    });
              });
        },
      ),
    );
  }
}
