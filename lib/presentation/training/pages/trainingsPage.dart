import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_log/application/auth/auth_cubit.dart';
import 'package:training_log/application/workoutWatcher/workoutwatcher_bloc.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:training_log/presentation/training/widgets/destinationWidget.dart';

import '../../../injection.dart';

class TrainingsPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _currentViewIndex = useState(0);
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
          body: DestinationWidget(
            index: _currentViewIndex.value,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentViewIndex
                .value, // this will be set when a new tab is tapped
            onTap: (int index) => _currentViewIndex.value = index,
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.mail),
                label: 'Personal Records',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile')
            ],
          ),
        ),
      ),
    );
  }
}
