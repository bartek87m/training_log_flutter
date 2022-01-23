import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:training_log/presentation/timer/widgets/button_timer_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:training_log/presentation/timer/widgets/stopwatch_rendered.dart';

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
  String _runningTimerInMinutes = '00';
  String _runningTimerInSecounds = '00';

  @override
  void initState() {
    super.initState();

    _ticker = this.createTicker((elapsed) {
      setState(() {
        _runningTimerInMinutes = _elapsed.inMinutes > 9
            ? _elapsed.inMinutes.toString()
            : '0${_elapsed.inMinutes}';
        _runningTimerInSecounds =
            _elapsed.inSeconds - (_elapsed.inMinutes * 60) > 9
                ? (_elapsed.inSeconds - (_elapsed.inMinutes * 60)).toString()
                : '0${(_elapsed.inSeconds - (_elapsed.inMinutes * 60))}';
        _currentlyElapsed = elapsed;
      });
    });
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  void _startStopTimer() {
    if (!_isTimerRunning) {
      _ticker.start();
      _isTimerRunning = true;
    } else {
      setState(() {
        _isTimerRunning = false;
      });
      _ticker.stop();
      _isTimerRunning = false;
      _previousElapsed += _currentlyElapsed;
      _currentlyElapsed = Duration.zero;
    }
  }

  void _resetStopwatch() {
    _ticker.stop();
    _runningTimerInMinutes = '00';
    _runningTimerInSecounds = '00';

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
              child: StopwatchRendererWidget(
                elapsed: _elapsed,
                radius: radius,
              ),
            ),
            Text(
              '${_runningTimerInMinutes}:${_runningTimerInSecounds}',
              style: TextStyle(fontSize: 8.h),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonTimerWidget(
                  buttonText: !_isTimerRunning ? "START" : "STOP",
                  buttonFunction: _startStopTimer,
                ),
                ButtonTimerWidget(
                  buttonText: 'RESET',
                  buttonFunction: _resetStopwatch,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
