import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:training_log/presentation/workout/widgets/timer_text.dart';

class PreTimeWidget extends StatefulWidget {
  final ValueChanged<bool> isPretimeDone;
  Duration timeForTimer;
  PreTimeWidget(
      {required this.timeForTimer, Key? key, required this.isPretimeDone})
      : super(key: key);

  @override
  State<PreTimeWidget> createState() => _PreTimeWidgetState();
}

class _PreTimeWidgetState extends State<PreTimeWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationControllerTimer;
  late final Animation<double> _curveAnimation;

  @override
  void initState() {
    _animationControllerTimer = AnimationController(
      vsync: this,
      duration: widget.timeForTimer,
    );
    _animationControllerTimer.addStatusListener(_checkStatusUpdates);

    _curveAnimation = _animationControllerTimer.drive(
      CurveTween(curve: Curves.easeIn),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationControllerTimer.dispose();

    super.dispose();
  }

  void _checkStatusUpdates(AnimationStatus status) {
    if (status == AnimationStatus.completed) widget.isPretimeDone.call(true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (BuildContext context, Widget? child) {
        return Stack(
          children: [
            Center(
              child: SizedBox(
                height: 20.h,
                width: 20.h,
                child: _animationControllerTimer.status ==
                        AnimationStatus.forward
                    ? TimerText(
                        timeInSecounds: widget.timeForTimer.inSeconds,
                        progress: _animationControllerTimer.value,
                      )
                    : FloatingActionButton(
                        onPressed: () => setState(() {
                          _animationControllerTimer.forward();
                        }),
                        child: FittedBox(
                            child:
                                Text("Start", style: TextStyle(fontSize: 6.h))),
                      ),
              ),
            ),
          ],
        );
      },
      animation: _curveAnimation,
    );
  }
}
