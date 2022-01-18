import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:training_log/presentation/timer/widgets/clock_hand_widget.dart';
import 'package:training_log/presentation/timer/widgets/clock_marker_widget.dart';
import 'package:training_log/presentation/timer/widgets/clock_text_marker_widget.dart';
import 'package:sizer/sizer.dart';

class StopwatchWidget extends StatefulWidget {
  StopwatchWidget({Key? key}) : super(key: key);

  @override
  State<StopwatchWidget> createState() => _StopwatchWidgetState();
}

class _StopwatchWidgetState extends State<StopwatchWidget>
    with SingleTickerProviderStateMixin {
  Duration _previousElapsed = Duration.zero;
  Duration _currentlyElapsed = Duration.zero;
  Duration get _elapsed => _previousElapsed + _currentlyElapsed;
  late final Ticker _ticker;
  double angle = 0.0;
  bool _isTimerRunning = false;
  String _runningMinutes = '00';
  String _runningSecounds = '00';

  @override
  void initState() {
    super.initState();

    _ticker = this.createTicker((elapsed) {
      setState(() {
        // if (_runningSecounds > 60) _runningSecounds = 0;
        _runningMinutes = elapsed.inMinutes > 9
            ? elapsed.inMinutes.toString()
            : '0${elapsed.inMinutes}';
        _runningSecounds = elapsed.inSeconds - (elapsed.inMinutes * 60) > 9
            ? (elapsed.inSeconds - (elapsed.inMinutes * 60)).toString()
            : '0${(elapsed.inSeconds - (elapsed.inMinutes * 60))}';
        _currentlyElapsed = elapsed;
      });
      print(_runningSecounds);
    });
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  void startStopTimer() {
    if (!_isTimerRunning) {
      _ticker.start();
      _isTimerRunning = true;
    } else {
      _ticker.stop();
      _isTimerRunning = false;
      _previousElapsed += _currentlyElapsed;
      _currentlyElapsed = Duration.zero;
    }
  }

  void _resetStopwatch() {
    _ticker.stop();

    setState(() {
      _isTimerRunning = false;
      _currentlyElapsed = Duration.zero;
      _previousElapsed = Duration.zero;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final radius = constraints.maxWidth / 2;
        return Column(
          children: [
            Container(
              height: 50.h,
              child: Stack(
                children: [
                  for (var i = 0; i < 60; i++)
                    Positioned(
                      left: radius * 1.0,
                      top: radius,
                      child: ClockMarkers(seconds: i, radius: radius),
                    ),
                  for (var i = 0; i < 60; i += 5)
                    Positioned(
                      left: radius * 1.0,
                      top: radius,
                      child: ClockTextMarkers(
                        value: i,
                        radius: radius,
                        maxValue: 60,
                      ),
                    ),
                  Positioned(
                    left: radius * 1.0,
                    top: radius,
                    child: ClockHandWidget(
                      radius: radius,
                      rotationAngle:
                          pi + (2 * pi / 60000) * _elapsed.inMilliseconds,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '${_runningMinutes}:${_runningSecounds}',
              style: TextStyle(fontSize: 8.h),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: startStopTimer,
                  child: Text(
                    'START',
                    style: TextStyle(color: Colors.red),
                  ),
                  style: ButtonStyle(
                      splashFactory: NoSplash.splashFactory,
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(color: Colors.red)))),
                ),
                TextButton(
                  onPressed: _resetStopwatch,
                  child: Text(
                    'RESET',
                    style: TextStyle(color: Colors.red),
                  ),
                  style: ButtonStyle(
                      splashFactory: NoSplash.splashFactory,
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(color: Colors.red)))),
                ),
                TextButton(
                  onPressed: startStopTimer,
                  child: Text(
                    'STOP',
                    style: TextStyle(color: Colors.red),
                  ),
                  style: ButtonStyle(
                      splashFactory: NoSplash.splashFactory,
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(color: Colors.red)))),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
