import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:training_log/application/cubit/auth_cubit.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class WorkoutViewPage extends StatelessWidget {
  const WorkoutViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
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
          child: Text('Workout view'),
        ),
      ),
    );
  }
}
