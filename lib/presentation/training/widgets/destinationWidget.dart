import 'package:flutter/material.dart';
import 'package:training_log/presentation/training/pages/personalRecordsPage.dart';
import 'package:training_log/presentation/training/pages/profilePage.dart';
import 'package:training_log/presentation/training/widgets/createNewWorkout.dart';
import 'package:training_log/presentation/training/widgets/workoutsViewsWidget.dart';

class DestinationWidget extends StatelessWidget {
  final index;

  const DestinationWidget({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: index,
      children: [
        Column(
          children: [
            CreateNewWorkout(),
            WorkoutsViewsWidget(),
          ],
        ),
        PersonalRecordsView(),
        ProfilePage(),
      ],
    );
  }
}
