import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:training_log/presentation/workout/CustomPainter/ring_painter.dart';
import 'package:training_log/presentation/workout/widgets/timer_text.dart';

class TimerWidget extends StatefulWidget {
  final ValueChanged<bool> isTimerDone;
  Duration timeForTimer;
  TimerWidget({required this.timeForTimer, Key? key, required this.isTimerDone})
      : super(key: key);

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationControllerTimer;
  late final Animation<double> _curveAnimation;

  @override
  void initState() {
    _animationControllerTimer = AnimationController(
      vsync: this,
      duration: widget.timeForTimer,
    );
    _curveAnimation = _animationControllerTimer.drive(
      CurveTween(curve: Curves.easeIn),
    );
    _animationControllerTimer.addStatusListener(_checkStatusUpdates);
    _animationControllerTimer.forward();

    super.initState();
  }

  @override
  void dispose() {
    _animationControllerTimer.dispose();

    super.dispose();
  }

  void _checkStatusUpdates(AnimationStatus status) {
    if (status == AnimationStatus.completed) widget.isTimerDone.call(true);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        builder: (BuildContext context, Widget? child) {
          return Stack(
            children: [
              Center(
                child: CustomPaint(
                  painter:
                      RingPainter(progress: _animationControllerTimer.value),
                ),
              ),
              Center(
                child: TimerText(
                  timeInSecounds: widget.timeForTimer.inSeconds,
                  progress: _animationControllerTimer.value,
                ),
              )
            ],
          );
        },
        animation: _curveAnimation,
      ),
    );
  }
}
