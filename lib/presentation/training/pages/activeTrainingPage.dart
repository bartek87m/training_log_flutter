import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:training_log/presentation/training/widgets/activeTrainingWidget.dart';

class ActiveTrainingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              child: Icon(Icons.arrow_back),
              onTap: () => ExtendedNavigator.of(context)
                  .popAndPush(Routes.trainingsPage),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomPadding: true,
      body: ActiveTraining(),
    );
  }
}
