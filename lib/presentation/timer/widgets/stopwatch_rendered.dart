import 'dart:math';

import 'package:flutter/material.dart';
import 'package:training_log/presentation/timer/widgets/clock_hand_widget.dart';
import 'package:training_log/presentation/timer/widgets/clock_marker_widget.dart';
import 'package:training_log/presentation/timer/widgets/clock_text_marker_widget.dart';

class StopwatchRendererWidget extends StatelessWidget {
  final radius;
  final elapsed;

  const StopwatchRendererWidget({Key? key, this.radius, this.elapsed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            rotationAngle: pi + (2 * pi / 60000) * elapsed.inMilliseconds,
          ),
        ),
      ],
    );
  }
}
