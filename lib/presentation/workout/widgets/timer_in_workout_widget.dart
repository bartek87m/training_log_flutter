import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:training_log/application/activeSeries/activeseries_cubit.dart';
import 'package:training_log/presentation/workout/CustomPainter/ring_painter.dart';

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
  late Duration timeForTimer;
  Color _color = Colors.transparent;
  AnimationPretimeStatus _pretimeStatus = AnimationPretimeStatus.Not_Started;
  bool isAnimationDone = false;

  late final AnimationController _animationControllerTimer;
  late final Animation<double> _curveAnimation;

  @override
  void initState() {
    timeForTimer = pretimeDuration;
    _animationControllerTimer = AnimationController(
      vsync: this,
      duration: timeForTimer,
    );

    _curveAnimation = _animationControllerTimer.drive(
      CurveTween(curve: Curves.easeIn),
    );

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      showElement();
    });
    super.initState();
  }

  @override
  void dispose() {
    _animationControllerTimer.dispose();
    super.dispose();
  }

  void showElement() {
    isAnimationDone = !isAnimationDone;
    setState(() {
      if (isAnimationDone) {
        _height = 40.h;
        _width = 95.w;
      } else {
        _animationControllerTimer.reset();
        _pretimeStatus = AnimationPretimeStatus.Not_Started;
        _height = 0;
        _width = 0;
      }
    });
  }

  void _handleStartTimer() {
    if (_pretimeStatus == AnimationPretimeStatus.Not_Started &&
        _animationControllerTimer.status == AnimationStatus.completed) {
      _animationControllerTimer.reset();
      setState(() {});
    }

    if (_pretimeStatus == AnimationPretimeStatus.Not_Started)
      _pretimeStatus = AnimationPretimeStatus.Forward;

    if (_animationControllerTimer.status == AnimationStatus.completed &&
        _pretimeStatus == AnimationPretimeStatus.Done) {
      _animationControllerTimer.reset();
      _animationControllerTimer.forward();
      _pretimeStatus = AnimationPretimeStatus.Not_Started;
    } else {
      if (_animationControllerTimer.status != AnimationStatus.completed) {
        _animationControllerTimer.forward();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      child: Container(
        color: Colors.red,
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
