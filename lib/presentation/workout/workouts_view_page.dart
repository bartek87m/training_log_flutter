import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:training_log/application/auth/auth_cubit.dart';
import 'package:training_log/application/workoutWatcher/workoutwatcher_bloc.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:training_log/presentation/workout/widgets/workouts_views_widget.dart';

import '../../injection.dart';

class WorkoutsViewPage extends StatelessWidget {
  const WorkoutsViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WorkoutwatcherBloc>(
      create: (context) => getIt<WorkoutwatcherBloc>()
        ..add(WorkoutwatcherEvent.downloadWorkouts()),
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () => null,
            unauthentificate: (_) {
              context.router.replace(SignInPageRoute());
            },
          );
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text('Workout view'),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 5.w),
                child: GestureDetector(
                  child: Icon(Icons.logout),
                  onTap: () async {
                    await context.read<AuthCubit>().signOut();
                  },
                ),
              )
            ],
          ),
          body: Container(
            child: WorkoutsViewsWidget(),
          ),
        ),
      ),
    );
  }
}
