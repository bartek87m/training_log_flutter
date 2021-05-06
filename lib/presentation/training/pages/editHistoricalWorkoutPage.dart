import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:training_log/presentation/training/widgets/activeTrainingWidget.dart';

class EditHistoricalWorkoutPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              child: Icon(Icons.arrow_back),
              onTap: () => {
                ExtendedNavigator.of(context).replace(Routes.trainingsPage),
              },
            ),
            SizedBox(
              width: 20,
            ),
            Text('Edit Workout')
          ],
        ),
      ),
      body: ActiveTraining(),
    );
  }
}
