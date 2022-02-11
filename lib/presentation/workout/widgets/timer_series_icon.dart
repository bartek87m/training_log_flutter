import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/activeSeries/activeseries_cubit.dart';

class TimerSeriesWidget extends StatelessWidget {
  final setIndex;
  final exerciseIndex;
  final VoidCallback showTimer;

  const TimerSeriesWidget(
      {Key? key, this.setIndex, this.exerciseIndex, required this.showTimer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(setIndex);
    return BlocBuilder<ActiveseriesCubit, ActiveseriesState>(
      builder: (context, state) => Container(
        child: state.finalListForTimerPossibility![setIndex]
            ? GestureDetector(
                onTap: () {
                  showTimer();
                },
                child: Icon(Icons.timer),
              )
            : Icon(Icons.timer_off),
      ),
    );
  }
}
