import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/workoutWatcher/workoutwatcher_bloc.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:training_log/presentation/workout/widgets/workout_short_view_widget.dart';
import 'package:auto_route/auto_route.dart';

class WorkoutsViewsWidget extends StatelessWidget {
  const WorkoutsViewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutwatcherBloc, WorkoutwatcherState>(
        builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          loading: (_) => Center(child: CircularProgressIndicator()),
          loadFailure: (_) => Text('Load Failure'),
          loadSuccess: (state) {
            return ListView.builder(
              itemCount: state.workouts.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    context.router.popAndPush(
                        WorkoutViewPageRoute(workout: state.workouts[index]));
                  },
                  child: WorkoutShortViewWidget(state.workouts[index]),
                );
              },
            );
          });
    });
  }
}
