import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PreTimeWidget extends StatefulWidget {
  Duration timeForTimer;
  PreTimeWidget({required this.timeForTimer, Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SizedBox(
            height: 20.h,
            width: 20.h,
            child: _animationControllerTimer.status == AnimationStatus.forward
                ? TimerText(
                    timeInSecounds: widget.timeForTimer.inSeconds,
                    progress: _animationControllerTimer.value,
                  )
                : FloatingActionButton(
                    onPressed: () => setState(() {
                      _animationControllerTimer.forward();
                    }),
                    child: FittedBox(
                        child: Text("Start", style: TextStyle(fontSize: 6.h))),
                  ),
          ),
        ),
      ],
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
