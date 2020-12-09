import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/workoutWatcher/workoutwatcher_bloc.dart';

class WorkoutsViewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: BlocBuilder<WorkoutwatcherBloc, WorkoutwatcherState>(
        builder: (context, state) {
          print(state);
          return state.map(
              initial: (_) => Container(),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              loadFailure: (state) => Text('${state}'),
              loadSuccess: (state) {
                return ListView.builder(itemBuilder: (context, index) {
                  return Text('${state.workouts[index].title.value}');
                });
              });
        },
      ),
    );
  }
}
