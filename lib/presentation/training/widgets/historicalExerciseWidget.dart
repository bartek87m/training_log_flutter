import 'package:flutter/material.dart';
import 'package:training_log/presentation/training/widgets/historicalWorkoutViewTextFormField.dart';

class HistoricalExerciseWidget extends StatelessWidget {
  final textFieldHeight;
  final textFieldWidth;
  final leftPadding;
  final exercise;

  HistoricalExerciseWidget({
    this.leftPadding,
    this.textFieldHeight,
    this.textFieldWidth,
    this.exercise,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white10,
          border: Border.all(width: 1, color: Colors.white24)),
      // color: Colors.white30,
      margin: const EdgeInsets.only(bottom: 5, top: 5, left: 20, right: 20),
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: this.leftPadding, bottom: 5),
            child: Text(
              "${exercise.exerciseName.getOrCrash()}",
              style: TextStyle(fontSize: 18),
            ),
          ),
          exercise.setsList.length > 0
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        for (var seriesNumber = 0;
                            seriesNumber < exercise.setsList.length;
                            seriesNumber++)
                          Container(
                            // color: Colors.white,
                            margin: EdgeInsets.only(bottom: 5),
                            alignment: Alignment.center,
                            width: textFieldWidth * 0.5,
                            height: textFieldHeight,
                            child: Text('${seriesNumber + 1}'),
                          ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // padding: EdgeInsets.only(bottom: 2),
                          child: Text(
                            "Reps",
                          ),
                        ),
                        for (var seriesNumber = 0;
                            seriesNumber < exercise.setsList.length;
                            seriesNumber++)
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            width: textFieldWidth,
                            height: textFieldHeight,
                            child: HistoricalWorkoutViewTextFormField(
                                exercise.setsList[seriesNumber].reps,
                                textFieldHeight * 0.7),
                          ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Text(
                            "Result",
                          ),
                        ),
                        for (var seriesNumber = 0;
                            seriesNumber < exercise.setsList.length;
                            seriesNumber++)
                          Container(
                            margin: EdgeInsets.only(top: 10, right: 30),
                            width: textFieldWidth,
                            height: textFieldHeight,
                            child: HistoricalWorkoutViewTextFormField(
                                exercise.setsList[seriesNumber].result,
                                textFieldHeight * 0.7),
                          ),
                      ],
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
