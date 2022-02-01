import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:training_log/presentation/workout/CustomPainter/ring_painter.dart';

enum AnimationPretimeStatus { Not_Started, Forward, Done }

class TimerInWorkoutWidget extends StatefulWidget {
  TimerInWorkoutWidget({Key? key}) : super(key: key);

  @override
  State<TimerInWorkoutWidget> createState() => TimerInWorkoutWidgetState();
}

class TimerInWorkoutWidgetState extends State<TimerInWorkoutWidget>
    with SingleTickerProviderStateMixin {
  double _width = 0;
  double _height = 0;
  Color _color = Colors.transparent;
  AnimationPretimeStatus _pretimeStatus = AnimationPretimeStatus.Not_Started;
  bool isAnimationDone = false;

  late final AnimationController _animationControllerTimer;
  late final Animation<double> _curveAnimation;

  @override
  void initState() {
    _animationControllerTimer = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
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
      child: Builder(
        builder: (context) {
          return AnimatedBuilder(
            animation: _curveAnimation,
            builder: (BuildContext context, Widget? child) {
              if (_animationControllerTimer.status ==
                      AnimationStatus.completed &&
                  _pretimeStatus == AnimationPretimeStatus.Forward) {
                _pretimeStatus = AnimationPretimeStatus.Done;
                _handleStartTimer();
              }
              ;
              if (_pretimeStatus == AnimationPretimeStatus.Not_Started ||
                  _pretimeStatus == AnimationPretimeStatus.Done) {
                return Stack(
                  children: [
                    Center(
                      child: isAnimationDone
                          ? CustomPaint(
                              painter: RingPainter(
                                  progress: _animationControllerTimer.value),
                            )
                          : Container(),
                    ),
                    Center(
                      child: SizedBox(
                        height: 20.h,
                        width: 20.h,
                        child: _animationControllerTimer.status ==
                                AnimationStatus.forward
                            ? TimerText(
                                timeInSecounds: 5,
                                progress: _animationControllerTimer.value,
                              )
                            : FloatingActionButton(
                                onPressed: () => _handleStartTimer(),
                                child: FittedBox(
                                    child: Text("Start",
                                        style: TextStyle(fontSize: 6.h))),
                              ),
                      ),
                    ),
                  ],
                );
              } else if (_pretimeStatus == AnimationPretimeStatus.Forward) {
                return Center(
                  child: TimerText(
                    timeInSecounds: 5,
                    progress: _animationControllerTimer.value,
                  ),
                );
              } else if (_pretimeStatus == AnimationPretimeStatus.Done) {
                return Text("sadasd");
              }
              return Container();
            },
          );
        },
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

class TimerText extends StatelessWidget {
  final progress;
  final int timeInSecounds;
  TimerText({Key? key, this.progress, required this.timeInSecounds})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animationValue = timeInSecounds + 1 - timeInSecounds * progress;
    final secoundsText = animationValue.toInt().toString();
    return Center(
      child: Text(
        secoundsText,
        style: TextStyle(fontSize: 10.h),
      ),
    );
  }
}
