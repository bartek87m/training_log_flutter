import 'package:flutter/material.dart';
import 'package:training_log/domain/workout/workout.dart';
import 'package:training_log/presentation/training/widgets/customTextFormField.dart';

class OverviewWorkoutPage extends StatelessWidget {
  final Workout workout;

  OverviewWorkoutPage(this.workout);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final textFieldHeight = (mediaQuery.height * 0.04);
    final textFieldWidth = (mediaQuery.width * 0.2);
    return Scaffold(
      appBar: AppBar(
        title: Text("${workout.title.getOrCrash()}"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: workout.exercieList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "${workout.exercieList[index].exerciseName.getOrCrash()}",
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: workout.exercieList[index].setsList.length > 0
                        ? <Widget>[
                            for (var _ in workout.exercieList[index].setsList)
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 5),
                                    child: Container(
                                      width: textFieldWidth,
                                      height: textFieldHeight,
                                      child: CustomTExtFormField(
                                          workout.exercieList[index]
                                              .setsList[index].reps,
                                          textFieldHeight * 0.7),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 5),
                                    child: Container(
                                      width: textFieldWidth,
                                      height: textFieldHeight,
                                      child: CustomTExtFormField(
                                          workout.exercieList[index]
                                              .setsList[index].weight,
                                          textFieldHeight * 0.7),
                                    ),
                                  ),
                                ],
                              )
                          ]
                        : <Widget>[
                            Container(
                              child: Text("No sets for this exercise"),
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
