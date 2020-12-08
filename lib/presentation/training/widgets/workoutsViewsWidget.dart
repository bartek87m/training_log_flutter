import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/workoutWatcher/workoutwatcher_bloc.dart';

class WorkoutsViewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocBuilder<WorkoutwatcherBloc, WorkoutwatcherState>(
        builder: (context, state) {
          return TextButton(
            child: Text("Download workout"),
            onPressed: () => context
                .read<WorkoutwatcherBloc>()
                .add(WorkoutwatcherEvent.downloadWorkouts()),
          );
        },
      ),
    );
  }
}
