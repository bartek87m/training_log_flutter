import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/auth/auth_cubit.dart';
import 'package:training_log/application/workoutWatcher/workoutwatcher_bloc.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:training_log/presentation/training/widgets/createNewWorkout.dart';
import 'package:training_log/presentation/training/widgets/workoutsViewsWidget.dart';

import '../../../injection.dart';

class TrainingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WorkoutwatcherBloc>(
          create: (context) => getIt<WorkoutwatcherBloc>()
            ..add(WorkoutwatcherEvent.downloadWorkouts()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthCubit, AuthState>(
            listener: (context, state) {
              state.map(
                  initial: (_) {},
                  authentificate: (_) {},
                  unauthentificate: (_) {
                    ExtendedNavigator.of(context).replace(Routes.signInPage);
                  });
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: EdgeInsets.all(2),
                child: GestureDetector(
                  child: Icon(Icons.logout),
                  onTap: () => context.read<AuthCubit>().signOut(),
                ),
              )
            ],
          ),
          body: Column(
            children: [
              CreateNewWorkout(),
              WorkoutsViewsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
