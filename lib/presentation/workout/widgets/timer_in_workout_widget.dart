import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:training_log/application/activeSeries/activeseries_cubit.dart';
import 'package:training_log/presentation/workout/CustomPainter/ring_painter.dart';
import 'package:training_log/presentation/workout/widgets/pre_timer_widget.dart';
import 'package:training_log/presentation/workout/widgets/timer_widget.dart';

enum AnimationPretimeStatus { Not_Started, Forward, Done }

class TimerInWorkoutWidget extends StatefulWidget {
  @required
  Duration timeForTimer;
  TimerInWorkoutWidget({required this.timeForTimer, Key? key})
      : super(key: key);

  @override
  State<TimerInWorkoutWidget> createState() => TimerInWorkoutWidgetState();
}

class TimerInWorkoutWidgetState extends State<TimerInWorkoutWidget>
    with SingleTickerProviderStateMixin {
  final pretimeDuration = Duration(seconds: 5);
  double _width = 0;
  double _height = 0;
  double _fontSize = 0.0;
  Color _color = Colors.transparent;
  bool isAnimationDone = false;
  bool isPreTimerDone = false;
  bool isTimerDone = false;

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      showElement();
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void showElement() {
    isAnimationDone = !isAnimationDone;
    setState(() {
      if (isAnimationDone) {
        _height = 40.h;
        _width = 95.w;
        isPreTimerDone = false;
        isTimerDone = false;
      } else {
        _height = 0;
        _width = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      child: !isTimerDone
          ? isPreTimerDone
              ? TimerWidget(
                  timeForTimer: Duration(seconds: 2),
                  isTimerDone: (bool value) {
                    setState(() {
                      isTimerDone = value;
                      Future.delayed(Duration.zero, () {
                        setState(() {
                          _fontSize = 64.0;
                        });
                      });
                    });
                  },
                )
              : PreTimeWidget(
                  timeForTimer: Duration(seconds: 2),
                  isPretimeDone: (bool value) {
                    setState(() {
                      isPreTimerDone = value;
                    });
                  },
                )
          : Center(
              child: AnimatedDefaultTextStyle(
                child: Text('DONE'),
                style: TextStyle(fontSize: _fontSize, color: Colors.amber),
                duration: Duration(milliseconds: 600),
                curve: Curves.linear,
              ),
            ),
      width: _width,
      height: _height,
      decoration:
          BoxDecoration(color: _color, borderRadius: BorderRadius.circular(5)),
      duration: Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }
}
