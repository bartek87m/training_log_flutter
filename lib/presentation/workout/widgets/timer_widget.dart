import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:training_log/presentation/workout/CustomPainter/ring_painter.dart';

class TimerWidget extends StatefulWidget {
  Duration timeForTimer;
  TimerWidget({required this.timeForTimer, Key? key}) : super(key: key);

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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RingPainter(progress: _animationControllerTimer.value),
    );
  }
}
