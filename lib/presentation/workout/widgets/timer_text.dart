import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
