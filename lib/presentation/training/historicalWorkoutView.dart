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
    const leftPadding = 30.0;
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
                          child: CustomTExtFormField(
                              workout.exercieList[index].setsList[seriesNumber]
                                  .reps,
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
                          child: CustomTExtFormField(
                              workout.exercieList[index].setsList[seriesNumber]
                                  .weight,
                              textFieldHeight * 0.7),
                        ),
                    ],
                  ),
                ],
              ),

              // Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: workout.exercieList[index].setsList.length > 0
              //       ? <Widget>[
              //           for (var seriesNumber = 0;
              //               seriesNumber <
              //                   workout.exercieList[index].setsList.length;
              //               seriesNumber++)
              //             Row(
              //               mainAxisAlignment:
              //                   MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Row(
              //                   children: [
              //                     Container(
              //                       padding: EdgeInsets.only(
              //                           top: 5, left: leftPadding),
              //                       height: textFieldHeight,
              //                       child: Text('${seriesNumber + 1}'),
              //                     ),
              //                     Container(
              //                       padding: EdgeInsets.symmetric(
              //                           horizontal: leftPadding,
              //                           vertical: 5),
              //                       child: Container(
              //                         width: textFieldWidth,
              //                         height: textFieldHeight,
              //                         child: CustomTExtFormField(
              //                             workout.exercieList[index]
              //                                 .setsList[seriesNumber].reps,
              //                             textFieldHeight * 0.7),
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //                 Container(
              //                   padding: EdgeInsets.symmetric(
              //                       horizontal: 30, vertical: 5),
              //                   child: Container(
              //                     width: textFieldWidth,
              //                     height: textFieldHeight,
              //                     child: CustomTExtFormField(
              //                         workout.exercieList[index]
              //                             .setsList[seriesNumber].weight,
              //                         textFieldHeight * 0.7),
              //                   ),
              //                 ),
              //               ],
              //             )
              //         ]
              //       : <Widget>[
              //           Container(
              //             child: Text("No sets for this exercise"),
              //           ),
              //         ],
              // ),
            );
          },
        ),
      ),
    );
  }
}
