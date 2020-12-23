import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/domain/workout/workout.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:training_log/presentation/training/widgets/historicalWorkoutViewTextFormField.dart';

class OverviewWorkoutPage extends StatelessWidget {
  final Workout workout;

  OverviewWorkoutPage(this.workout);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final textFieldHeight = (mediaQuery.height * 0.04);
    final textFieldWidth = (mediaQuery.width * 0.2);
    const leftPadding = 30.0;
    return Scaffold(
      appBar: AppBar(
        title: Text("${workout.title.getOrCrash()}"),
        actions: [
          BlocConsumer<WorkoutBloc, WorkoutState>(
            builder: (BuildContext context, state) {
              return GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.delete),
                ),
                onTap: () => {
                  context.read<WorkoutBloc>().add(
                      WorkoutEvent.deleteWorkout(this.workout.id.getOrCrash())),
                },
              );
            },
            listener: (BuildContext context, state) {
              if (state.isDeleted) {
                FlushbarHelper.createInformation(
                  message: "Workout deleted",
                ).show(context).then((value) => {
                      ExtendedNavigator.of(context)
                          .replace(Routes.trainingsPage)
                    });
              }
            },
          ),
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: workout.exercieList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: leftPadding, bottom: 5),
                        child: Text(
                          "${workout.exercieList[index].exerciseName.getOrCrash()}",
                        ),
                      ),
                      for (var seriesNumber = 0;
                          seriesNumber <
                              workout.exercieList[index].setsList.length;
                          seriesNumber++)
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          alignment: Alignment.center,
                          width: textFieldWidth,
                          height: textFieldHeight,
                          child: Text('${seriesNumber + 1}'),
                        ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                          "Series",
                        ),
                      ),
                      for (var seriesNumber = 0;
                          seriesNumber <
                              workout.exercieList[index].setsList.length;
                          seriesNumber++)
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          width: textFieldWidth,
                          height: textFieldHeight,
                          child: HistoricalWorkoutViewTextFormField(
                              workout.exercieList[index].setsList[seriesNumber]
                                  .reps
                                  .getOrCrash(),
                              textFieldHeight * 0.7),
                        ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 5, right: 30),
                        child: Text(
                          "Result",
                        ),
                      ),
                      for (var seriesNumber = 0;
                          seriesNumber <
                              workout.exercieList[index].setsList.length;
                          seriesNumber++)
                        Container(
                          margin: EdgeInsets.only(top: 5, right: 30),
                          width: textFieldWidth,
                          height: textFieldHeight,
                          child: HistoricalWorkoutViewTextFormField(
                              workout.exercieList[index].setsList[seriesNumber]
                                  .result
                                  .getOrCrash(),
                              textFieldHeight * 0.7),
                        ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
